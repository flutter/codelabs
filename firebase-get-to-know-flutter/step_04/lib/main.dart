import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'src/widgets.dart';

final actionCodeSettings = ActionCodeSettings(
  url: 'https://flutterfiredemoproj.page.link',
  handleCodeInApp: true,
  androidMinimumVersion: '1',
  androidPackageName: 'com.example.gtk_flutter',
  iOSBundleId: 'io.flutter.plugins.fireabaseUiExample',
);

final emailLinkProviderConfig = EmailLinkAuthProvider(
  actionCodeSettings: actionCodeSettings,
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);

  runApp(ChangeNotifierProvider(
    create: (context) => ApplicationState(),
    builder: ((context, child) => const App()),
  ));
  // runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
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

    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) {
          return const HomePage();
        },
        '/sign-in': ((context) {
          return SignInScreen(
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
                  debugPrint('signed in state change detected');
                  if (user == null) {
                    debugPrint('user is null');
                    return;
                  }
                  if (!user.emailVerified) {
                    user.sendEmailVerification();
                    const snackBar = SnackBar(
                        content: Text(
                            'Please check your email to verify your email address'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                  Navigator.of(context).pushReplacementNamed('/home');
                }
              })),
              mfaAction,
            ],
          );
        }),
        '/verify-email': (context) {
          return EmailVerificationScreen(
            actionCodeSettings: actionCodeSettings,
            actions: [
              EmailVerifiedAction(() {
                Navigator.pushReplacementNamed(context, '/profile');
              }),
              AuthCancelledAction((context) {
                FirebaseUIAuth.signOut(context: context);
                Navigator.pushReplacementNamed(context, '/home');
              }),
            ],
          );
        },
        '/forgot-password': ((context) {
          final arguments = ModalRoute.of(context)?.settings.arguments
              as Map<String, dynamic>?;

          return ForgotPasswordScreen(
            email: arguments?['email'] as String,
            headerMaxExtent: 200,
          );
        }),
        '/profile': ((context) {
          return ProfileScreen(
            providers: [],
            actionCodeSettings: actionCodeSettings,
            // showMFATile: true,
            actions: [
              // AuthStateChangeAction<SignedOut>(callback){} //TODO: Missing Signed Out action?
              AuthStateChangeAction(((context, state) {
                debugPrint('state: ${state.toString()}');
              })),
              SignedOutAction(
                ((context) {
                  debugPrint('signed out event');
                  Navigator.of(context).pushReplacementNamed('/home');
                }),
              ),
            ],
          );
        })
      },
      title: 'Firebase Meetup',
      theme: ThemeData(
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
              highlightColor: Colors.deepPurple,
            ),
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ApplicationState>(
        builder: (context, appState, child) => Scaffold(
              appBar: AppBar(
                title: const Text('Firebase Meetup'),
              ),
              body: ListView(
                children: <Widget>[
                  Image.asset('assets/codelab.png'),
                  const SizedBox(height: 8),
                  const IconAndDetail(Icons.calendar_today, 'October 30'),
                  const IconAndDetail(Icons.location_city, 'San Francisco'),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, bottom: 8),
                        child: StyledButton(
                            onPressed: () {
                              !appState.loggedIn
                                  ? Navigator.of(context).pushNamed('/sign-in')
                                  : FirebaseAuth.instance.signOut();
                            },
                            child: !appState.loggedIn
                                ? Text("RSVP")
                                : Text("Logout")),
                      ),
                      Visibility(
                          visible: appState.loggedIn,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 24, bottom: 8),
                            child: StyledButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/profile');
                                },
                                child: Text('Profile')),
                          ))
                    ],
                  ),
                  const Divider(
                    height: 8,
                    thickness: 1,
                    indent: 8,
                    endIndent: 8,
                    color: Colors.grey,
                  ),
                  const Header("What we'll be doing"),
                  const Paragraph(
                    'Join us for a day full of Firebase Workshops and Pizza!',
                  ),
                ],
              ),
            ));
  }
}

class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }

  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;

  Future<void> init() async {
    FirebaseAuth.instance.userChanges().listen((user) {
      // Swap with AuthStateListener
      debugPrint('User change detected!');
      if (user != null) {
        _loggedIn = true;
        debugPrint('user photo ${user.photoURL}');
      } else {
        _loggedIn = false;
      }
      notifyListeners();
    });
  }
}

/**
 * Authentciation flow is being wired to the widget tree with authcodr builder. Similar to block so it just rebuilds the widget tree. Wrap ui with Authflowbuilder
 * Use authstate.auth.conetxt with theme of context, just general flutter pattern. When the auth flow builder is a component use auth state listener and flutter listeners
 * query the authenticationstate via context or provide a qidget called authstate listener.
 * 
 * 
 */