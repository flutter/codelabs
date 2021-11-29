import 'dart:io';

List diffDirs(List<Directory> dirs) {
  List diffs = [];
  for (int idx = 0; idx < dirs.length - 1; idx++) {
    final a = dirs[idx];
    final b = dirs[idx + 1];
    diffs.add(_diff(a, b));
  }
}

Object _diff(Directory a, Directory b) {}
