import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

const updatesPerSecond = 10; // make sure (1000/updatesPerSecond) is a valid int

class DashCounter extends ChangeNotifier {
  final numberFormatter = NumberFormat.compactLong();
  int get count => _count.floor();
  String get countString => _countString;
  String _countString = '0';
  double _count = 0;
  late Timer timer;

  double _autoIncrementCount = 0;
  int _multiplier = 1;

  DashCounter() {
    timer = Timer.periodic(
      Duration(milliseconds: (1000 / updatesPerSecond).floor()),
      (timer) => _updateWithAutoIncrement(),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void increment() {
    _increment(1);
  }

  void addAutoIncrement({
    required double incrementPerSecond,
    required int costs,
  }) {
    _count -= costs;
    _autoIncrementCount += incrementPerSecond;
    notifyListeners();
  }

  void _updateWithAutoIncrement() {
    _increment(_autoIncrementCount * _multiplier / updatesPerSecond);
  }

  void _increment(double increment) {
    var oldCount = _countString;
    _count += increment;
    _countString = numberFormatter.format(count);
    if (_countString != oldCount) {
      notifyListeners();
    }
  }

  void applyPaidMultiplier() {
    _multiplier = 10;
  }

  void removePaidMultiplier() {
    _multiplier = 1;
  }

  void addBoughtDashes(int amount) {
    _increment(amount.toDouble());
  }
}
