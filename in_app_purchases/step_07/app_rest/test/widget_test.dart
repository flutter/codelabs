import 'package:dashclicker/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App starts', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Tim Sneath'), findsOneWidget);
  });
}
