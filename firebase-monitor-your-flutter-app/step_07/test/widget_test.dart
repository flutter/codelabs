// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:async';

import 'package:flutter_abtest/main.dart';
import 'package:flutter_abtest/src/data/inventory_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'widget_test.mocks.dart';

@GenerateMocks([ShopInventoryProvider])
void main() {
  final inventoryProvider = MockShopInventoryProvider();

  when(inventoryProvider.shopInventory)
      .thenAnswer((_) => Stream.fromIterable([]));

  testWidgets('Basic rendering', (widgetTester) async {
    await widgetTester.pumpWidget(
      CoolShopApp(
        shopInventoryProvider: inventoryProvider,
      ),
    );

    expect(find.text('Dash Store'), findsOneWidget);
  });
}
