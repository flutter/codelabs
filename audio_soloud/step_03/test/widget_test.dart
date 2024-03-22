import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:audio_soloud/audio/audio_controller.dart';
import 'package:audio_soloud/main.dart';

void main() {
  testWidgets('Smoke test UI', (WidgetTester tester) async {
    final audioController = MockAudioController();
    await audioController.initialize();

    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(audioController: audioController));

    // Verify that our UI shows.
    expect(find.text('Play Sound'), findsOneWidget);

    // Verify that the checkbox is unchecked.
    final checkboxFinder = find.byType(Checkbox).first;
    expect(tester.widget<Checkbox>(checkboxFinder).value, false);

    // Tap the checkbox.
    await tester.tap(checkboxFinder);
    await tester.pump();

    // Verify that it changed value.
    expect(tester.widget<Checkbox>(checkboxFinder).value, true);
  });
}

class MockAudioController implements AudioController {
  @override
  void applyFilter() {}

  @override
  void fadeOutMusic() {}

  @override
  Future<void> initialize() async {}

  @override
  Future<void> playSound(String assetKey) async {}

  @override
  void removeFilter() {}

  @override
  void dispose() {}

  @override
  Future<void> startMusic() async {}
}
