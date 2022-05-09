### Configuration Files

Create `lib/constants.dart` with:

```
const androidPackageId = "....";
const appStoreSharedSecret = "....";
const googlePlayPubsubBillingTopic = "play_billing";
const googlePlayProjectName = "....";
```

- Add `assets/service-account-firebase.json` with the server key for the Firebase Firestore project.
- Add `assets/service-account-google-play.json` with the server key for the Google Play access key project.

### Running

Run locally with `dart run ./bin/server.dart`.
