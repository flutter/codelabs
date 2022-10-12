# Supplemental Material - Multi Factor Authentication

Welcome to the supplemental material. Here we are going over content that will be shown at Firebase Summit 2022. A video link will be posted soon.

## Starter Code
You can download the starter code by going to the parent directory and visiting step_09. The directory that you are currently in has completed MFA code added to it. The only thing you would need to do in order to test this code would be to call `flutterfire configure` to configure the project for your application and to follow the `Before we write the code` section below to register your cert fingerprint or to grab the url schema for use with reCaptcha verification.

## What is Multi Factor Authentication?
Mulit factor authentication (MFA) is a way to authenticate a user with not only a password but another form of authentication. In this example, we are going to add phone authentication where a user is texted a code to input into the app. We are already using the Firebase Auth UI package so its a few lines to change.

## Before we write the code

Before we write any code, we need to configure our applications for Firebase MFA. In this example, we are using reCaptcha to verify whether or not we can utilize MFA. For more information on setting up reCaptcha for your platform, please visit the appropriate resource for [iOS](https://firebase.google.com/docs/auth/ios/multi-factor) and [Android](https://firebase.google.com/docs/auth/android/multi-factor#before_you_begin).

### Android

For Android, you will want to register your SHA-256 certificate fingerprint in the console. If you are working with the default android signing key, you can find that fingerprint through the gradlew command using :

```shell
cd android
./gradlew signingReport
```

More information about signing keys can be found in this resource:

[![Validating your Trusted Web Activity’s Digital Asset Links](https://img.youtube.com/vi/3bAQPnxLd4c/hq720.jpg)](https://youtu.be/3bAQPnxLd4c?t=101)

You then want to take your SHA-256 fingerprint and register it in the **Your Apps** section of [your project settings](https://firebase.corp.google.com/project/_/settings/general).

You will need to enter in each certificate fingerprint that you will be using. For most developers, this will be a debug key, an upload key, and a Google Play signing key. Your needs may vary on how many certificate fingerprints are needed for your situation.

### iOS

For iOS, you will want to grab your encoded app id from the **Your Apps** section of [your project settings](https://firebase.corp.google.com/project/_/settings/general).

Once you have this value, you will want to open your project in XCode and go to the info tab. In the info tab, at the borrom there is a way to add a URL type with the URL schema of the encoded app id that you got from the firebase console.

## Code

Next, we would want to provide a way for the user to enroll in MFA after they have verified their email. They can visit their profile page which should contain information about their user account. In this page, they should know whether or not their email was verified and if their email was verified, show an enrollment option for MFA. This will require us to consume our application state and check whether or not the email was verified and if it was, show the MFA enrollment option. If it was not verified, a yellow banner will be shown instead. We add in an out of band verification button for verification of the email verification since to automatically redirect back to the application, we would need to integrate deep linking. We use a key to determine whether or not the state of this widget needs to be updated and redrawn.

```dart
'/profile': ((context) {
    return Consumer<ApplicationState>(
    builder: (context, appState, _) => ProfileScreen(
        key: ValueKey(appState.emailVerified),
        providers: const [],
        // add the following line
        showMFATile: appState.emailVerified,
        // finish adding
        actions: [
        SignedOutAction(
            ((context) {
            Navigator.of(context)
                .popUntil(ModalRoute.withName('/home'));
            }),
        ),
        ],
        children: [
        Visibility(
            visible: !appState.emailVerified,
            child: OutlinedButton(
            onPressed: () {
                appState.refreshLoggedInUser();
            },
            child: Text("Recheck email verification status"),
            ),
        ),
        ],
    ),
    );
})
```

At this point in time, our users can register for MFA, but now they are unable to login as MFA has not been configured on sign in. We need a way to handle the MFA response from Firebase Authentication to additionally supply the MFA screen so users are able to fully login. For this, we will use an `AuthStateChangeAction` listener to listen for the `MFARequired` event. Once this event is triggered, we will start a MFAVerification and then push the user to their profile once they are logged in.

```dart
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //Add from here
    final mfaAction = AuthStateChangeAction<MFARequired>(
      (context, state) async {
        final nav = Navigator.of(context);

        await startMFAVerification(
          resolver: state.resolver,
          context: context,
        );

        unawaited(nav.pushReplacementNamed('/profile'));
      },
    );
    // to here

    return MaterialApp(
```

And we then supply this action to the SignInScreen actions array.

```dart
actions: [
    ForgotPasswordAction(((context, email) {
    Navigator.of(context)
        .pushNamed('/forgot-password', arguments: {'email': email});
    })),
    AuthStateChangeAction(((context, state) {
    if (state is SignedIn || state is UserCreated) {
        var user = (state is SignedIn)
            ? state.user
            : (state as UserCreated).credential.user;
        if (user == null) {
        return;
        }
        if (state is UserCreated) {
        user.updateDisplayName(user.email!.split('@')[0]);
        user.sendEmailVerification();
        }
        if (!user.emailVerified) {
        user.sendEmailVerification();
        const snackBar = SnackBar(
            content: Text(
                'Please check your email to verify your email address'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
        Navigator.of(context).popUntil(ModalRoute.withName('/home'));
    }
    })),
    mfaAction,  // Add this line
],
```

Our app is now configured for multi factor authentication.