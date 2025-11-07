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

String _$workQueueHash() => r'dca73cc7fb2cef3f5dcfdcc3a0926167e88c1083';

@ProviderFor(StartTime)
const startTimeProvider = StartTimeProvider._();

final class StartTimeProvider extends $NotifierProvider<StartTime, DateTime?> {
  const StartTimeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'startTimeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$startTimeHash();

  @$internal
  @override
  StartTime create() => StartTime();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateTime? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateTime?>(value),
    );
  }
}

String _$startTimeHash() => r'5b637a624a48eed021215571ff83a4a2405691c3';

abstract class _$StartTime extends $Notifier<DateTime?> {
  DateTime? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DateTime?, DateTime?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DateTime?, DateTime?>,
              DateTime?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(EndTime)
const endTimeProvider = EndTimeProvider._();

final class EndTimeProvider extends $NotifierProvider<EndTime, DateTime?> {
  const EndTimeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'endTimeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$endTimeHash();

  @$internal
  @override
  EndTime create() => EndTime();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateTime? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateTime?>(value),
    );
  }
}

String _$endTimeHash() => r'7acd30f633755ae938883bcb0ba25a40387194df';

abstract class _$EndTime extends $Notifier<DateTime?> {
  DateTime? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DateTime?, DateTime?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DateTime?, DateTime?>,
              DateTime?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(expectedRemainingTime)
const expectedRemainingTimeProvider = ExpectedRemainingTimeProvider._();

final class ExpectedRemainingTimeProvider
    extends $FunctionalProvider<Duration, Duration, Duration>
    with $Provider<Duration> {
  const ExpectedRemainingTimeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'expectedRemainingTimeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$expectedRemainingTimeHash();

  @$internal
  @override
  $ProviderElement<Duration> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Duration create(Ref ref) {
    return expectedRemainingTime(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Duration value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Duration>(value),
    );
  }
}

String _$expectedRemainingTimeHash() =>
    r'45f19e0d3e281c34cb54ed7f67cc783ec5073889';

/// A provider that holds whether to display info.

@ProviderFor(ShowDisplayInfo)
const showDisplayInfoProvider = ShowDisplayInfoProvider._();

/// A provider that holds whether to display info.
final class ShowDisplayInfoProvider
    extends $NotifierProvider<ShowDisplayInfo, bool> {
  /// A provider that holds whether to display info.
  const ShowDisplayInfoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'showDisplayInfoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$showDisplayInfoHash();

  @$internal
  @override
  ShowDisplayInfo create() => ShowDisplayInfo();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$showDisplayInfoHash() => r'75a0679db4cc1a0d5cfa7aa33afc633faf08fc24';

/// A provider that holds whether to display info.

abstract class _$ShowDisplayInfo extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// A provider that summarise the DisplayInfo from a [model.WorkQueue].

@ProviderFor(DisplayInfo)
const displayInfoProvider = DisplayInfoProvider._();

/// A provider that summarise the DisplayInfo from a [model.WorkQueue].
final class DisplayInfoProvider
    extends $NotifierProvider<DisplayInfo, model.DisplayInfo> {
  /// A provider that summarise the DisplayInfo from a [model.WorkQueue].
  const DisplayInfoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'displayInfoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$displayInfoHash();

  @$internal
  @override
  DisplayInfo create() => DisplayInfo();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(model.DisplayInfo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<model.DisplayInfo>(value),
    );
  }
}

String _$displayInfoHash() => r'6516f6bf346baa6914fdfffad1ccee8a5345a137';

/// A provider that summarise the DisplayInfo from a [model.WorkQueue].

abstract class _$DisplayInfo extends $Notifier<model.DisplayInfo> {
  model.DisplayInfo build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<model.DisplayInfo, model.DisplayInfo>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<model.DisplayInfo, model.DisplayInfo>,
              model.DisplayInfo,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// A provider that holds the current number of background workers to use.

@ProviderFor(WorkerCount)
const workerCountProvider = WorkerCountProvider._();

/// A provider that holds the current number of background workers to use.
final class WorkerCountProvider
    extends $NotifierProvider<WorkerCount, BackgroundWorkers> {
  /// A provider that holds the current number of background workers to use.
  const WorkerCountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'workerCountProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$workerCountHash();

  @$internal
  @override
  WorkerCount create() => WorkerCount();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BackgroundWorkers value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BackgroundWorkers>(value),
    );
  }
}

String _$workerCountHash() => r'36dad09ba2cfe03b0879e7bf20059cec12e5118c';

/// A provider that holds the current number of background workers to use.

abstract class _$WorkerCount extends $Notifier<BackgroundWorkers> {
  BackgroundWorkers build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<BackgroundWorkers, BackgroundWorkers>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BackgroundWorkers, BackgroundWorkers>,
              BackgroundWorkers,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
