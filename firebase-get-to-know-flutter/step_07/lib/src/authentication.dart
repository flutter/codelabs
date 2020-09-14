import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'application_state.dart';
import 'widgets.dart';

class GTKAuthentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<GTKApplicationState>(
        builder: (context, appState, _) {
          switch (appState.loginState) {
            case GTKApplicationLoginState.loggedOut:
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, bottom: 8),
                    child: GTKButton(
                      child: Text('RSVP'),
                      onPressed: () {
                        appState.startLoginFlow();
                      },
                    ),
                  ),
                ],
              );
            case GTKApplicationLoginState.emailAddress:
              return GTKEmailForm(
                  callback: (email) => appState.verifyEmail(email,
                      (e) => _showErrorDialog(context, 'Invalid email', e)));
            case GTKApplicationLoginState.password:
              return GTKPasswordForm(
                email: appState.email,
                login: (email, password) {
                  appState.signInWithEmailAndPassword(email, password,
                      (e) => _showErrorDialog(context, 'Failed to sign in', e));
                },
              );
            case GTKApplicationLoginState.register:
              return GTKRegisterForm(
                email: appState.email,
                cancel: () {
                  appState.cancelRegistration();
                },
                registerAccount: (
                  email,
                  displayName,
                  password,
                ) {
                  appState.registerAccount(
                      email,
                      displayName,
                      password,
                      (e) => _showErrorDialog(
                          context, 'Failed to create account', e));
                },
              );
            case GTKApplicationLoginState.loggedIn:
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, bottom: 8),
                    child: GTKButton(
                      child: Text('LOGOUT'),
                      onPressed: () {
                        appState.signOut();
                      },
                    ),
                  ),
                ],
              );
            default:
              return Row(
                children: [
                  Text("Internal error, this shouldn't happen..."),
                ],
              );
          }
        },
      );

  void _showErrorDialog(
      BuildContext context, String title, FirebaseAuthException e) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(fontSize: 24),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  '${e.message}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            GTKButton(
              child: Text(
                'OK',
                style: TextStyle(color: Colors.deepPurple),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class GTKEmailForm extends StatefulWidget {
  GTKEmailForm({@required this.callback});
  final void Function(String email) callback;
  @override
  _GTKEmailFormState createState() => _GTKEmailFormState();
}

class _GTKEmailFormState extends State<GTKEmailForm> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_EmailFormState');
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GTKHeader('Sign in with email'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextFormField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter your email address to continue';
                      }
                      return null;
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 30),
                      child: GTKButton(
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            widget.callback(_controller.text);
                          }
                        },
                        child: Text('NEXT'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GTKRegisterForm extends StatefulWidget {
  GTKRegisterForm({
    @required this.registerAccount,
    @required this.cancel,
    @required this.email,
  });
  final String email;
  final void Function(String email, String displayName, String password)
      registerAccount;
  final void Function() cancel;
  @override
  _GTKRegisterFormState createState() => _GTKRegisterFormState();
}

class _GTKRegisterFormState extends State<GTKRegisterForm> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_RegisterFormState');
  final _emailController = TextEditingController();
  final _displayNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.text = widget.email;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GTKHeader('Create account'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter your email address to continue';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextFormField(
                    controller: _displayNameController,
                    decoration: const InputDecoration(
                      hintText: 'First & last name',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter your account name';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter your password';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                        highlightColor: Colors.deepPurple,
                        onPressed: widget.cancel,
                        child: Text('CANCEL'),
                      ),
                      SizedBox(width: 16),
                      GTKButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            widget.registerAccount(
                              _emailController.text,
                              _displayNameController.text,
                              _passwordController.text,
                            );
                          }
                        },
                        child: Text('SAVE'),
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GTKPasswordForm extends StatefulWidget {
  GTKPasswordForm({
    @required this.login,
    @required this.email,
  });
  final String email;
  final void Function(String email, String password) login;
  @override
  _GTKPasswordFormState createState() => _GTKPasswordFormState();
}

class _GTKPasswordFormState extends State<GTKPasswordForm> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_PasswordFormState');
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.text = widget.email;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GTKHeader('Sign in'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter your email address to continue';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter your password';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 16),
                      GTKButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            widget.login(
                              _emailController.text,
                              _passwordController.text,
                            );
                          }
                        },
                        child: Text('SIGN IN'),
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
