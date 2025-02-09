// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wordListHash() => r'07003444d7241448561b638500001e31610b4717';

/// A provider for the wordlist to use when generating the crossword.
///
/// Copied from [wordList].
@ProviderFor(wordList)
final wordListProvider = AutoDisposeFutureProvider<BuiltSet<String>>.internal(
  wordList,
  name: r'wordListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$wordListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WordListRef = AutoDisposeFutureProviderRef<BuiltSet<String>>;
String _$workQueueHash() => r'3e484a5afe91003b1523ffb42caa6b24967376a6';

/// See also [workQueue].
@ProviderFor(workQueue)
final workQueueProvider = AutoDisposeStreamProvider<model.WorkQueue>.internal(
  workQueue,
  name: r'workQueueProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$workQueueHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WorkQueueRef = AutoDisposeStreamProviderRef<model.WorkQueue>;
String _$expectedRemainingTimeHash() =>
    r'45f19e0d3e281c34cb54ed7f67cc783ec5073889';

/// See also [expectedRemainingTime].
@ProviderFor(expectedRemainingTime)
final expectedRemainingTimeProvider = AutoDisposeProvider<Duration>.internal(
  expectedRemainingTime,
  name: r'expectedRemainingTimeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$expectedRemainingTimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ExpectedRemainingTimeRef = AutoDisposeProviderRef<Duration>;
String _$sizeHash() => r'e551985965bf4119e8d90c0e8aa4f4d68a555b73';

/// A provider that holds the current size of the crossword to generate.
///
/// Copied from [Size].
@ProviderFor(Size)
final sizeProvider = NotifierProvider<Size, CrosswordSize>.internal(
  Size.new,
  name: r'sizeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sizeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Size = Notifier<CrosswordSize>;
String _$startTimeHash() => r'5b637a624a48eed021215571ff83a4a2405691c3';

/// See also [StartTime].
@ProviderFor(StartTime)
final startTimeProvider = NotifierProvider<StartTime, DateTime?>.internal(
  StartTime.new,
  name: r'startTimeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$startTimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$StartTime = Notifier<DateTime?>;
String _$endTimeHash() => r'7acd30f633755ae938883bcb0ba25a40387194df';

/// See also [EndTime].
@ProviderFor(EndTime)
final endTimeProvider = NotifierProvider<EndTime, DateTime?>.internal(
  EndTime.new,
  name: r'endTimeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$endTimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EndTime = Notifier<DateTime?>;
String _$showDisplayInfoHash() => r'75a0679db4cc1a0d5cfa7aa33afc633faf08fc24';

/// A provider that holds whether to display info.
///
/// Copied from [ShowDisplayInfo].
@ProviderFor(ShowDisplayInfo)
final showDisplayInfoProvider =
    NotifierProvider<ShowDisplayInfo, bool>.internal(
      ShowDisplayInfo.new,
      name: r'showDisplayInfoProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$showDisplayInfoHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ShowDisplayInfo = Notifier<bool>;
String _$displayInfoHash() => r'6516f6bf346baa6914fdfffad1ccee8a5345a137';

/// A provider that summarise the DisplayInfo from a [model.WorkQueue].
///
/// Copied from [DisplayInfo].
@ProviderFor(DisplayInfo)
final displayInfoProvider =
    AutoDisposeNotifierProvider<DisplayInfo, model.DisplayInfo>.internal(
      DisplayInfo.new,
      name: r'displayInfoProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$displayInfoHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$DisplayInfo = AutoDisposeNotifier<model.DisplayInfo>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
