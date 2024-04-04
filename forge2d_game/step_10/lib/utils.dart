import 'dart:ui' as ui;

import 'package:characters/characters.dart';
import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:xml/xml.dart';
import 'package:xml/xpath.dart';

class XmlSpriteSheet {
  XmlSpriteSheet(this.image, String xml) {
    final document = XmlDocument.parse(xml);
    for (final node in document.xpath('//TextureAtlas/SubTexture')) {
      final name = node.getAttribute('name')!;
      final x = double.parse(node.getAttribute('x')!);
      final y = double.parse(node.getAttribute('y')!);
      final width = double.parse(node.getAttribute('width')!);
      final height = double.parse(node.getAttribute('height')!);
      _rects[name] = Rect.fromLTWH(x, y, width, height);
    }
  }

  final ui.Image image;
  final _rects = <String, Rect>{};

  Sprite getSprite(String name) {
    final rect = _rects[name];
    if (rect == null) {
      throw ArgumentError('Sprite $name not found');
    }
    return Sprite(
      image,
      srcPosition: rect.topLeft.toVector2(),
      srcSize: rect.size.toVector2(),
    );
  }

  Map<ui.Size, List<String>> groupSpriteNamesBySize() {
    final groups = <ui.Size, List<String>>{};
    for (final entry in _rects.entries) {
      final size = entry.value.size;
      groups.putIfAbsent(size, () => []).add(entry.key);
    }

    return groups;
  }

  String groupElementsBySizeToString() {
    final groups = groupSpriteNamesBySize();
    final buff = StringBuffer();
    for (final size in groups.keys) {
      buff.writeln('## Size: $size');
      final entries = groups[size]!;
      entries.sort();
      for (final type in ['Explosive', 'Glass', 'Metal', 'Stone', 'Wood']) {
        buff.writeln('### $type');
        var where = entries.where((element) => element.contains(type));
        if (where.length == 5) {
          buff.writeln(
              "(BrickType.${type.toLowerCase()}, BrickSize.size${size.width.toInt()}x${size.height.toInt()}, BrickDamage.none) => '${where.elementAt(0)}',");
          buff.writeln(
              "(BrickType.${type.toLowerCase()}, BrickSize.size${size.width.toInt()}x${size.height.toInt()}, BrickDamage.some) => '${where.elementAt(1)}',");
          buff.writeln(
              "(BrickType.${type.toLowerCase()}, BrickSize.size${size.width.toInt()}x${size.height.toInt()}, BrickDamage.lots) => '${where.elementAt(4)}',");
        } else if (where.length == 10) {
          buff.writeln(
              "(BrickType.${type.toLowerCase()}, BrickSize.size${size.width.toInt()}x${size.height.toInt()}, BrickDamage.none) => '${where.elementAt(3)}',");
          buff.writeln(
              "(BrickType.${type.toLowerCase()}, BrickSize.size${size.width.toInt()}x${size.height.toInt()}, BrickDamage.some) => '${where.elementAt(4)}',");
          buff.writeln(
              "(BrickType.${type.toLowerCase()}, BrickSize.size${size.width.toInt()}x${size.height.toInt()}, BrickDamage.lots) => '${where.elementAt(9)}',");
        } else if (where.length == 15) {
          buff.writeln(
              "(BrickType.${type.toLowerCase()}, BrickSize.size${size.width.toInt()}x${size.height.toInt()}, BrickDamage.none) => '${where.elementAt(7)}',");
          buff.writeln(
              "(BrickType.${type.toLowerCase()}, BrickSize.size${size.width.toInt()}x${size.height.toInt()}, BrickDamage.some) => '${where.elementAt(8)}',");
          buff.writeln(
              "(BrickType.${type.toLowerCase()}, BrickSize.size${size.width.toInt()}x${size.height.toInt()}, BrickDamage.lots) => '${where.elementAt(13)}',");
        } else {
          buff.writeln(where.toList().join(', '));
        }
      }
    }
    return buff.toString();
  }

  String groupSpriteNamesBySizeToString() {
    final groups = groupSpriteNamesBySize();
    final buff = StringBuffer();
    for (final key in groups.keys) {
      buff.writeln('## Size: $key');
      buff.writeln(groups[key]!.toList()
        ..sort()
        ..join(', '));
    }
    return buff.toString();
  }
}

extension Vector2Label on Vector2 {
  String get label => '(${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})';
}

extension CapitalizeString on String {
  String capitalize() =>
      characters.first.toUpperCase() + characters.skip(1).toLowerCase().join();
}
