// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ffi';
import 'dart:io' show Platform;
import 'package:ffi/ffi.dart' as ffi;

import 'duktape_bindings_generated.dart';

const String _libName = 'ffigen_app';

/// The dynamic library in which the symbols for [DuktapeBindings] can be found.
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
final DuktapeBindings _bindings = DuktapeBindings(_dylib);

class Duktape {
  Duktape() {
    ctx = _bindings.duk_create_heap(
      nullptr,
      nullptr,
      nullptr,
      nullptr,
      nullptr,
    );
  }

  void evalString(String jsCode) {
    // From duktape.h:
    // #define duk_peval_string(ctx,src)  \
    // 	(duk_eval_raw((ctx), (src), 0, 0 /*args*/ | DUK_COMPILE_EVAL | DUK_COMPILE_SAFE | DUK_COMPILE_NOSOURCE | DUK_COMPILE_STRLEN | DUK_COMPILE_NOFILENAME))

    var nativeUtf8 = jsCode.toNativeUtf8();
    _bindings.duk_eval_raw(
      ctx,
      nativeUtf8.cast<Char>(),
      0,
      0 /*args*/ |
          DUK_COMPILE_EVAL |
          DUK_COMPILE_SAFE |
          DUK_COMPILE_NOSOURCE |
          DUK_COMPILE_STRLEN |
          DUK_COMPILE_NOFILENAME,
    );
    ffi.malloc.free(nativeUtf8);
  }

  int getInt(int index) {
    return _bindings.duk_get_int(ctx, index);
  }

  void dispose() {
    _bindings.duk_destroy_heap(ctx);
    ctx = nullptr;
  }

  late Pointer<duk_hthread> ctx;
}
