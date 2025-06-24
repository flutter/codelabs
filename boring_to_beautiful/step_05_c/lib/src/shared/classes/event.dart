// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class Event {
  const Event({
    required this.date,
    required this.title,
    required this.location,
    required this.link,
  });

  final String date;
  final String title;
  final String location;
  final String link;
}
