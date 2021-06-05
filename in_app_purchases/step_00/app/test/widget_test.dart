import 'package:flutter_test/flutter_test.dart';

import 'package:dashclicker/main.dart';

void main() {
  testWidgets('App starts', (tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Tim Sneath'), findsOneWidget);
  });
}
