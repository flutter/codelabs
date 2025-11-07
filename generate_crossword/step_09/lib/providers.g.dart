// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// A provider for the wordlist to use when generating the crossword.

@ProviderFor(wordList)
const wordListProvider = WordListProvider._();

/// A provider for the wordlist to use when generating the crossword.

final class WordListProvider
    extends
        $FunctionalProvider<
          AsyncValue<BuiltSet<String>>,
          BuiltSet<String>,
          FutureOr<BuiltSet<String>>
        >
    with $FutureModifier<BuiltSet<String>>, $FutureProvider<BuiltSet<String>> {
  /// A provider for the wordlist to use when generating the crossword.
  const WordListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wordListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wordListHash();

  @$internal
  @override
  $FutureProviderElement<BuiltSet<String>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<BuiltSet<String>> create(Ref ref) {
    return wordList(ref);
  }
}

String _$wordListHash() => r'07003444d7241448561b638500001e31610b4717';

/// A provider that holds the current size of the crossword to generate.

@ProviderFor(Size)
const sizeProvider = SizeProvider._();

/// A provider that holds the current size of the crossword to generate.
final class SizeProvider extends $NotifierProvider<Size, CrosswordSize> {
  /// A provider that holds the current size of the crossword to generate.
  const SizeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sizeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sizeHash();

  @$internal
  @override
  Size create() => Size();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CrosswordSize value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CrosswordSize>(value),
    );
  }
}

String _$sizeHash() => r'e551985965bf4119e8d90c0e8aa4f4d68a555b73';

/// A provider that holds the current size of the crossword to generate.

abstract class _$Size extends $Notifier<CrosswordSize> {
  CrosswordSize build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CrosswordSize, CrosswordSize>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CrosswordSize, CrosswordSize>,
              CrosswordSize,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(workQueue)
const workQueueProvider = WorkQueueProvider._();

final class WorkQueueProvider
    extends
        $FunctionalProvider<
          AsyncValue<model.WorkQueue>,
          model.WorkQueue,
          Stream<model.WorkQueue>
        >
    with $FutureModifier<model.WorkQueue>, $StreamProvider<model.WorkQueue> {
  const WorkQueueProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'workQueueProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$workQueueHash();

  @$internal
  @override
  $StreamProviderElement<model.WorkQueue> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<model.WorkQueue> create(Ref ref) {
    return workQueue(ref);
  }
}

String _$workQueueHash() => r'297192935b85a20243519048088822c6ff30dbac';

@ProviderFor(Puzzle)
const puzzleProvider = PuzzleProvider._();

final class PuzzleProvider
    extends $NotifierProvider<Puzzle, model.CrosswordPuzzleGame> {
  const PuzzleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'puzzleProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$puzzleHash();

  @$internal
  @override
  Puzzle create() => Puzzle();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(model.CrosswordPuzzleGame value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<model.CrosswordPuzzleGame>(value),
    );
  }
}

String _$puzzleHash() => r'dddad218b4318b008af2db67dd0ff284bcef3231';

abstract class _$Puzzle extends $Notifier<model.CrosswordPuzzleGame> {
  model.CrosswordPuzzleGame build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<model.CrosswordPuzzleGame, model.CrosswordPuzzleGame>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<model.CrosswordPuzzleGame, model.CrosswordPuzzleGame>,
              model.CrosswordPuzzleGame,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
