// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/views/views.dart';

class HomeHighlight extends StatelessWidget {
  const HomeHighlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2), // Modify this line
            child: Clickable(
              child: SizedBox(
                height: 275,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/news/concert.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () => launchUrl(Uri.parse('https://docs.flutter.dev')),
            ),
          ),
        ),
      ],
    );
  }
}
