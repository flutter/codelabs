// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import '../extensions.dart';
import 'outlined_card.dart';

class ImageTile extends StatelessWidget {
  const ImageTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: context.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                subtitle,
                overflow: TextOverflow.ellipsis,
                style: context.labelSmall,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
