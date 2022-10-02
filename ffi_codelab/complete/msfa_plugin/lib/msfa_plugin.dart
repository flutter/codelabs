import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart' as ffi;

import 'msfa_plugin_bindings_generated.dart';

void init() => _bindings.initEngine();

void sendMidi(List<int> list) {
  Pointer<Uint8> buf = ffi.malloc.allocate(list.length);
  for (int i = 0; i < list.length; i++) {
    buf[i] = list[i];
  }
  _bindings.sendMidi(buf, list.length);
  ffi.malloc.free(buf);
}

const String _libName = 'msfa_plugin';

/// The dynamic library in which the symbols for [LibmsfaPluginBindings] can be found.
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

/// The bindings to the native functions in [_dylib].
final MsfaPluginBindings _bindings = MsfaPluginBindings(_dylib);
