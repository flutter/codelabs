### Configuration Files

Create `lib/constants.dart` with:

```
const androidPackageId = "your Android package ID";
const appStoreIssuerId = 'App Store Key issuer ID';
const appStoreKeyId = 'App Store Keu ID';
const appStoreSharedSecret = "App Store shared secret";
const bundleId = 'your iOS bundle ID';
const googlePlayProjectName = "Google Cloud project name";
const googlePlayPubsubBillingTopic = "play_billing"; // change if necessary
```

- Add `assets/service-account-firebase.json` with the server key for the Firebase Firestore project.
- Add `assets/service-account-google-play.json` with the server key for the Google Play access key project.
- Add `assets/SubscriptionKey.p8` with the server key for the App Store.

### Running

Run locally with `dart run ./bin/server.dart`.
