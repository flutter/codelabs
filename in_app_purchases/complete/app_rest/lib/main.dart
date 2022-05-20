import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:provider/provider.dart';

import 'logic/dash_counter.dart';
import 'logic/dash_purchases.dart';
import 'logic/dash_upgrades.dart';
import 'logic/firebase_notifier.dart';
import 'pages/home_page.dart';
import 'pages/purchase_page.dart';
import 'repo/iap_repo.dart';

// Gives the option to override in tests.
class IAPConnection {
  static InAppPurchase? _instance;
  static set instance(InAppPurchase value) {
    _instance = value;
  }

  static InAppPurchase get instance {
    _instance ??= InAppPurchase.instance;
    return _instance!;
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dash Clicker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Dash Clicker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

typedef PageBuilder = Widget Function();

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    const HomePage(),
    const PurchasePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FirebaseNotifier>(
            create: (_) => FirebaseNotifier()),
        ChangeNotifierProvider<DashCounter>(create: (_) => DashCounter()),
        ChangeNotifierProvider<DashUpgrades>(
          create: (context) => DashUpgrades(
            context.read<DashCounter>(),
            context.read<FirebaseNotifier>(),
          ),
        ),
        ChangeNotifierProvider<IAPRepo>(
          create: (context) => IAPRepo(context.read<FirebaseNotifier>()),
        ),
        ChangeNotifierProvider<DashPurchases>(
          create: (context) => DashPurchases(
            context.read<DashCounter>(),
            context.read<FirebaseNotifier>(),
            context.read<IAPRepo>(),
          ),
          lazy: false,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: 'Purchase',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (index) => setState(() => _selectedIndex = index),
        ),
      ),
    );
  }
}
