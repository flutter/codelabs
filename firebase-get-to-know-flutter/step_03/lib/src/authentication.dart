import 'package:flutter/material.dart';

import 'widgets.dart';

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
