import 'package:flutter_test/flutter_test.dart';
import 'package:gtk_flutter/main.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Basic rendering', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => ApplicationState(),
        builder: (context, _) => const App(),
      ),
    );

    // Verify that our counter starts at 0.
    expect(find.text('Firebase Meetup'), findsOneWidget);
    expect(find.text('January 1st'), findsNothing);
  });
}
