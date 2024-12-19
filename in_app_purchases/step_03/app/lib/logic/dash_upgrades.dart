import 'package:flutter/cupertino.dart';

import 'dash_counter.dart';
import 'firebase_notifier.dart';

class DashUpgrades extends ChangeNotifier {
  DashCounter counter;
  FirebaseNotifier firebaseNotifier;

  DashUpgrades(this.counter, this.firebaseNotifier) {
    counter.addListener(_onCounterChange);
    _updateUpgradeOptions();
  }

  Upgrade tim = Upgrade(cost: 5, work: 1, count: 0);

  void _onCounterChange() {
    if (_updateUpgradeOptions()) notifyListeners();
  }

  bool _updateUpgradeOptions() {
    var hasChanges = false;

    hasChanges = _updateUpgrade(tim) | hasChanges;

    return hasChanges;
  }

  bool _updateUpgrade(Upgrade upgrade) {
    var canBuy = counter.count >= upgrade.cost;
    if (canBuy == upgrade.purchasable) return false;
    upgrade._purchasable = canBuy;
    return true;
  }

  void addTim() {
    _buy(tim);
  }

  void _buy(
    Upgrade upgrade,
  ) {
    if (counter.count < upgrade.cost) return;

    counter.addAutoIncrement(
      incrementPerSecond: upgrade.work,
      costs: upgrade.cost,
    );
    upgrade._increment();
    _updateUpgradeOptions();
    notifyListeners();
  }

  @override
  void dispose() {
    counter.removeListener(_onCounterChange);
    super.dispose();
  }
}

class Upgrade {
  int get cost => _cost;
  late int _cost;

  double get work => _work;
  late double _work;

  int get count => _count;
  late int _count;

  bool get purchasable => _purchasable;
  bool _purchasable = false;

  Upgrade({required int cost, required double work, required int count}) {
    _cost = cost;
    _work = work;
    _count = count;
  }

  void _increment() {
    _count++;
    _cost = (_cost * 1.3).ceil();
  }
}
