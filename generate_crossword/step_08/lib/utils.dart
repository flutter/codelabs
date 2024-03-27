import 'dart:math';

import 'package:built_collection/built_collection.dart';

/// A [Random] instance for generating random numbers.
final _random = Random();

/// An extension on [BuiltSet] that adds a method to get a random element.
extension RandomElements<E> on BuiltSet<E> {
  E randomElement() {
    return elementAt(_random.nextInt(length));
  }
}

/// An extension on [Duration] that adds a method to format the duration.
extension DurationFormat on Duration {
  /// A human-readable string representation of the duration.
  /// This format is tuned for durations in the seconds to days range.
  String get formatted {
    final hours = inHours.remainder(24).toString().padLeft(2, '0');
    final minutes = inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = inSeconds.remainder(60).toString().padLeft(2, '0');
    return switch ((inDays, inHours, inMinutes, inSeconds)) {
      (0, 0, 0, _) => '${inSeconds}s',
      (0, 0, _, _) => '$inMinutes:$seconds',
      (0, _, _, _) => '$inHours:$minutes:$seconds',
      _ => '$inDays days, $hours:$minutes:$seconds',
    };
  }
}
