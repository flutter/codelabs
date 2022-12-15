import 'package:flutter_test/flutter_test.dart';
import 'package:material3_reply/main.dart';

void main() {
  testWidgets('Build app and trigger a frame', (tester) async {
    await tester.pumpWidget(const MainApp());
  });
}
