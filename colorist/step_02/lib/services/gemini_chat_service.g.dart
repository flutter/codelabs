// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_chat_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(geminiChatService)
const geminiChatServiceProvider = GeminiChatServiceProvider._();

final class GeminiChatServiceProvider
    extends
        $FunctionalProvider<
          GeminiChatService,
          GeminiChatService,
          GeminiChatService
        >
    with $Provider<GeminiChatService> {
  const GeminiChatServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'geminiChatServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$geminiChatServiceHash();

  @$internal
  @override
  $ProviderElement<GeminiChatService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GeminiChatService create(Ref ref) {
    return geminiChatService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GeminiChatService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GeminiChatService>(value),
    );
  }
}

String _$geminiChatServiceHash() => r'4e26bc50fdc3eef30780d404d45fa39aeb0a49d6';
