import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../logic/dash_counter.dart';
import '../logic/dash_purchases.dart';
import '../logic/dash_upgrades.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
          flex: 2,
          child: DashClickerWidget(),
        ),
        Expanded(child: UpgradeList()),
      ],
    );
  }
}

class DashClickerWidget extends StatelessWidget {
  const DashClickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CounterStateWidget(),
          InkWell(
            // Don't listen as we don't need a rebuild when the count changes
            onTap: Provider.of<DashCounter>(context, listen: false).increment,
            child: Image.asset(context.read<DashPurchases>().beautifiedDash
                ? 'assets/dash.png'
                : 'assets/dash_old.png'),
          )
        ],
      ),
    );
  }
}

class CounterStateWidget extends StatelessWidget {
  const CounterStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This widget is the only widget that directly listens to the counter
    // and is thus updated almost every frame. Keep this as small as possible.
    var counter = context.watch<DashCounter>();
    return RichText(
      text: TextSpan(
        text: 'You have tapped Dash ',
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
              text: counter.countString,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          const TextSpan(text: ' times!'),
        ],
      ),
    );
  }
}

class UpgradeList extends StatelessWidget {
  const UpgradeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var upgrades = context.watch<DashUpgrades>();
    return ListView(children: [
      _UpgradeWidget(
        upgrade: upgrades.tim,
        title: 'Tim Sneath',
        onPressed: upgrades.addTim,
      ),
    ]);
  }
}

class _UpgradeWidget extends StatelessWidget {
  final Upgrade upgrade;
  final String title;
  final VoidCallback onPressed;

  const _UpgradeWidget({
    Key? key,
    required this.upgrade,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: ListTile(
          leading: Center(
            widthFactor: 1,
            child: Text(
              upgrade.count.toString(),
            ),
          ),
          title: Text(
            title,
            style: !upgrade.purchasable
                ? const TextStyle(color: Colors.redAccent)
                : null,
          ),
          subtitle: Text('Produces ${upgrade.work} dashes per second'),
          trailing: Text(
            '${NumberFormat.compact().format(upgrade.cost)} dashes',
          ),
        ));
  }
}
