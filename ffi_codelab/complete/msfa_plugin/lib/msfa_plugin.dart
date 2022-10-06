import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'package:ffi/ffi.dart' as ffi;

import 'msfa_plugin_bindings_generated.dart';

const String _libName = 'msfa_plugin';

/// The bindings to the native functions in [_dylib].
MsfaPluginBindings get _bindings => MsfaPluginBindings(_dylib);

/// The dynamic library in which the symbols for [MsfaPluginBindings] can be found.
final DynamicLibrary _dylib = () {
  if (Platform.isMacOS || Platform.isIOS) {
    return DynamicLibrary.open('$_libName.framework/$_libName');
  }
  if (Platform.isAndroid || Platform.isLinux) {
    return DynamicLibrary.open('lib$_libName.so');
  }
  if (Platform.isWindows) {
    return DynamicLibrary.open('$_libName.dll');
  }
  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}();

class MSFAPlugin implements Finalizable {
  static final _finalizer = NativeFinalizer(_bindings.addresses.shutdownEngine.cast());

  /// Used to prevent double close and usage after close.
  bool _shutdown = false;

  Future<bool> init() async {
    final SendPort helperIsolateSendPort = await _helperIsolateSendPort;
    final request = _InitRequest();
    final completer = Completer<bool>();
    _initRequest = completer;
    helperIsolateSendPort.send(request);
    return completer.future;
  }

  void sendMidi(List<int> list) {
    Pointer<Uint8> buf = ffi.malloc.allocate(list.length);
    for (int i = 0; i < list.length; i++) {
      buf[i] = list[i];
    }
    _bindings.sendMidi(buf, list.length);
    ffi.malloc.free(buf);
  }

  void shutDown() {
    if (_shutdown) {
      return;
    }
    _shutdown = true;
    _finalizer.detach(this);
    _bindings.shutdownEngine();
  }

  void shutDownIsolate() {}
}

/// A request to Init the MSFA Engine
class _InitRequest {}

Completer<bool>? _initRequest;

/// The SendPort belonging to the helper isolate.
Future<SendPort> _helperIsolateSendPort = () async {
  // The helper isolate is going to send us back a SendPort, which we want to
  // wait for.
  final Completer<SendPort> completer = Completer<SendPort>();

  // Receive port on the main isolate to receive messages from the helper.
  // We receive two types of messages:
  // 1. A port to send messages on.
  // 2. Responses to requests we sent.
  final ReceivePort receivePort = ReceivePort()
    ..listen((final dynamic data) {
      if (data is SendPort) {
        // The helper isolate sent us the port on which we can sent it requests.
        completer.complete(data);
        return;
      }
      if (data is bool) {
        // The helper isolate sent us a response to a request we sent.
        final completer = _initRequest;
        _initRequest = null;
        completer?.complete(data);
        return;
      }
      throw UnsupportedError('Unsupported message type: ${data.runtimeType}');
    });

  // Start the helper isolate.
  await Isolate.spawn((SendPort sendPort) async {
    final ReceivePort helperReceivePort = ReceivePort()
      ..listen((dynamic data) {
        // On the helper isolate listen to requests and respond to them.
        if (data is _InitRequest) {
          _bindings.initEngine();
          sendPort.send(true);
          // ignore: avoid_print
          print("exiting Helper Isolate");
          Isolate.exit();
        }
        throw UnsupportedError('Unsupported message type: ${data.runtimeType}');
      });

    // Send the the port to the main isolate on which we can receive requests.
    sendPort.send(helperReceivePort.sendPort);
  }, receivePort.sendPort);

  // Wait until the helper isolate has sent us back the SendPort on which we
  // can start sending requests.
  return completer.future;
}();
