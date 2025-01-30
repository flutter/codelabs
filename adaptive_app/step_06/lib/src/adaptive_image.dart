// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdaptiveImage extends StatelessWidget {
  AdaptiveImage.network(String url, {super.key}) {
    if (kIsWeb) {
      _url =
          Uri.parse(
            url,
          ).replace(host: 'localhost', port: 8080, scheme: 'http').toString();
    } else {
      _url = url;
    }
  }

  late final String _url;

  @override
  Widget build(BuildContext context) {
    return Image.network(_url);
  }
}
