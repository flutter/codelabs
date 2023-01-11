// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../models/models.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.currentUser,
  });

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
        padding: const EdgeInsets.fromLTRB(31, 12, 12, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.search),
            const Padding(padding: EdgeInsets.only(right: 23.5)),
            Expanded(
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  hintText: 'Search replies',
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage(currentUser.avatarUrl),
            ),
          ],
        ),
      ),
    );
  }
}
