import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart'
    hide
    EmailAuthProvider,
    PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'src/authentication.dart';
import 'src/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ChangeNotifierProvider(
    create: (context) => ApplicationState(),
    builder: ((context, child) => const App()),
  ));
}

final _routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, status) => const HomePage(),
    ),
    GoRoute(
      path: '/sign-in',
      builder: (context, status) {
        return SignInScreen(
          actions: [
            ForgotPasswordAction(((context, email) {
              context.go(Uri(
                path: '/forgot-password',
                queryParameters: <String, String?>{'email': email},
              ).toString());
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
                }
                if (!user.emailVerified) {
                  user.sendEmailVerification();
                  const snackBar = SnackBar(
                      content: Text(
                          'Please check your email to verify your email address'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                context.go('/');
              }
            })),
          ],
        );
      },
    ),
    GoRoute(
      path: '/forgot-password',
      builder: (context, status) {
        final arguments = status.queryParams;
        return ForgotPasswordScreen(
          email: arguments['email'] as String,
          headerMaxExtent: 200,
        );
      },
    ),
    GoRoute(
      path: '/profile',
      builder: (context, status) {
        return ProfileScreen(
          providers: [],
          actions: [
            SignedOutAction(
              ((context) {
                context.go('/');
              }),
            ),
          ],
        );
      },
    ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
      routerConfig: _routes,
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
            // Add from here
            Consumer<ApplicationState>(
              builder: (context, appState, _) => AuthFunc(
                  loggedIn: appState.loggedIn,
                  signOut: () {
                    FirebaseAuth.instance.signOut();
                  }),
            ),
            // to here
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
      ),
    );
  }
}

class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }

  bool _loggedIn = false;

  bool get loggedIn => _loggedIn;

  Future<void> init() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
    ]);

    FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        _loggedIn = true;
      } else {
        _loggedIn = false;
      }
      notifyListeners();
    });
  }
}
