// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(firebaseApp)
const firebaseAppProvider = FirebaseAppProvider._();

final class FirebaseAppProvider
    extends
        $FunctionalProvider<
          AsyncValue<FirebaseApp>,
          FirebaseApp,
          FutureOr<FirebaseApp>
        >
    with $FutureModifier<FirebaseApp>, $FutureProvider<FirebaseApp> {
  const FirebaseAppProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebaseAppProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebaseAppHash();

  @$internal
  @override
  $FutureProviderElement<FirebaseApp> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FirebaseApp> create(Ref ref) {
    return firebaseApp(ref);
  }
}

String _$firebaseAppHash() => r'eaf72348ad852e52538678ec3a1b50b5c9af17ef';

@ProviderFor(geminiModel)
const geminiModelProvider = GeminiModelProvider._();

final class GeminiModelProvider
    extends
        $FunctionalProvider<
          AsyncValue<GenerativeModel>,
          GenerativeModel,
          FutureOr<GenerativeModel>
        >
    with $FutureModifier<GenerativeModel>, $FutureProvider<GenerativeModel> {
  const GeminiModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'geminiModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$geminiModelHash();

  @$internal
  @override
  $FutureProviderElement<GenerativeModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GenerativeModel> create(Ref ref) {
    return geminiModel(ref);
  }
}

String _$geminiModelHash() => r'c6550e4a62e99f22324928fae16928b7db5dce4a';

@ProviderFor(chatSession)
const chatSessionProvider = ChatSessionProvider._();

final class ChatSessionProvider
    extends
        $FunctionalProvider<
          AsyncValue<ChatSession>,
          ChatSession,
          FutureOr<ChatSession>
        >
    with $FutureModifier<ChatSession>, $FutureProvider<ChatSession> {
  const ChatSessionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatSessionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatSessionHash();

  @$internal
  @override
  $FutureProviderElement<ChatSession> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ChatSession> create(Ref ref) {
    return chatSession(ref);
  }
}

String _$chatSessionHash() => r'fdd5e4ed9d06db9712c9300eeb8a1b54a115b10a';
