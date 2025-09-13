// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_tools.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(geminiTools)
const geminiToolsProvider = GeminiToolsProvider._();

final class GeminiToolsProvider
    extends $FunctionalProvider<GeminiTools, GeminiTools, GeminiTools>
    with $Provider<GeminiTools> {
  const GeminiToolsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'geminiToolsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$geminiToolsHash();

  @$internal
  @override
  $ProviderElement<GeminiTools> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GeminiTools create(Ref ref) {
    return geminiTools(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GeminiTools value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GeminiTools>(value),
    );
  }
}

String _$geminiToolsHash() => r'f61ae618aa3a6be31184f91b78b504b695ef0851';
