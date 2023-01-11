// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class Attachment {
  const Attachment({
    required this.url,
  });

  final String url;
}

class Email {
  const Email({
    required this.sender,
    required this.recipients,
    required this.subject,
    required this.content,
    this.replies = 0,
    this.attachments = const [],
  });

  final User sender;
  final List<User> recipients;
  final String subject;
  final String content;
  final List<Attachment> attachments;
  final double replies;
}

class Name {
  const Name({
    required this.first,
    required this.last,
  });

  final String first;
  final String last;
  String get fullName => '$first $last';
}

class User {
  const User({
    required this.name,
    required this.avatarUrl,
    required this.lastActive,
  });

  final Name name;
  final String avatarUrl;
  final DateTime lastActive;
}
