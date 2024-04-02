// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$forge2dGameHash() => r'b728952ccd85a184fbe4eee7f42a69f2e393065b';

/// The resettable game instance.
///
/// Copied from [Forge2dGame].
@ProviderFor(Forge2dGame)
final forge2dGameProvider =
    AutoDisposeNotifierProvider<Forge2dGame, Forge2DExample>.internal(
  Forge2dGame.new,
  name: r'forge2dGameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$forge2dGameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Forge2dGame = AutoDisposeNotifier<Forge2DExample>;
String _$onTapHash() => r'ca855493b840f5b515f38d083dd0d5b508db28bd';

/// An on tap callback.
///
/// Copied from [OnTap].
@ProviderFor(OnTap)
final onTapProvider = AutoDisposeNotifierProvider<OnTap, int>.internal(
  OnTap.new,
  name: r'onTapProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$onTapHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$OnTap = AutoDisposeNotifier<int>;
String _$ballCountHash() => r'522ee3430dcf47baeb43312fabdedb2fa597985d';

/// The number of balls to have on screen
///
/// Copied from [BallCount].
@ProviderFor(BallCount)
final ballCountProvider = AutoDisposeNotifierProvider<BallCount, int>.internal(
  BallCount.new,
  name: r'ballCountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$ballCountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BallCount = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
