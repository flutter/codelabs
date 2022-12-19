// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../models/data.dart' as data;
import 'email_widget.dart';

class ReplyListView extends StatelessWidget {
  const ReplyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ListView(
        children: [
          const Padding(padding: EdgeInsets.only(bottom: 8.0)),
          ...List.generate(data.replies.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: EmailWidget(
                email: data.replies[index],
                isPreview: false,
                isThreaded: true,
                showHeadline: index == 0,
              ),
            );
          }),
        ],
      ),
    );
  }
}
