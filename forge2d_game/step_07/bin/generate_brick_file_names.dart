// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_print

import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:xml/xml.dart';
import 'package:xml/xpath.dart';

void main() {
  final file = File('assets/spritesheet_elements.xml');
  final rects = <String, Rect>{};
  final document = XmlDocument.parse(file.readAsStringSync());
  for (final node in document.xpath('//TextureAtlas/SubTexture')) {
    final name = node.getAttribute('name')!;
    rects[name] = Rect(
      x: int.parse(node.getAttribute('x')!),
      y: int.parse(node.getAttribute('y')!),
      width: int.parse(node.getAttribute('width')!),
      height: int.parse(node.getAttribute('height')!),
    );
  }
  print(generateBrickFileNames(rects));
}

class Rect extends Equatable {
  final int x;
  final int y;
  final int width;
  final int height;
  const Rect({
    required this.x,
    required this.y,
    required this.width,
    required this.height,
  });

  Size get size => Size(width, height);

  @override
  List<Object?> get props => [x, y, width, height];

  @override
  bool get stringify => true;
}

class Size extends Equatable {
  final int width;
  final int height;
  const Size(this.width, this.height);

  @override
  List<Object?> get props => [width, height];

  @override
  bool get stringify => true;
}

String generateBrickFileNames(Map<String, Rect> rects) {
  final groups = <Size, List<String>>{};
  for (final entry in rects.entries) {
    groups.putIfAbsent(entry.value.size, () => []).add(entry.key);
  }
  final buff = StringBuffer();
  buff.writeln('''
Map<BrickDamage, String> brickFileNames(BrickType type, BrickSize size) {
  return switch ((type, size)) {''');
  for (final entry in groups.entries) {
    final size = entry.key;
    final entries = entry.value;
    entries.sort();
    for (final type in ['Explosive', 'Glass', 'Metal', 'Stone', 'Wood']) {
      var filtered = entries.where((element) => element.contains(type));
      if (filtered.length == 5) {
        buff.writeln('''
    (BrickType.${type.toLowerCase()}, BrickSize.size${size.width}x${size.height}) => {
        BrickDamage.none: '${filtered.elementAt(0)}',
        BrickDamage.some: '${filtered.elementAt(1)}',
        BrickDamage.lots: '${filtered.elementAt(4)}',
      },''');
      } else if (filtered.length == 10) {
        buff.writeln('''
    (BrickType.${type.toLowerCase()}, BrickSize.size${size.width}x${size.height}) => {
        BrickDamage.none: '${filtered.elementAt(3)}',
        BrickDamage.some: '${filtered.elementAt(4)}',
        BrickDamage.lots: '${filtered.elementAt(9)}',
      },''');
      } else if (filtered.length == 15) {
        buff.writeln('''
    (BrickType.${type.toLowerCase()}, BrickSize.size${size.width}x${size.height}) => {
        BrickDamage.none: '${filtered.elementAt(7)}',
        BrickDamage.some: '${filtered.elementAt(8)}',
        BrickDamage.lots: '${filtered.elementAt(13)}',
      },''');
      }
    }
  }
  buff.writeln('''
  };
}''');
  return buff.toString();
}
