import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'src/application_state.dart';
import 'src/authentication.dart';
import 'src/widgets.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => GTKApplicationState(),
      builder: (context, _) => GTKApp(),
    ),
  );
}

class GTKApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: GTKHomePage(),
    );
  }
}

class GTKHomePage extends StatelessWidget {
  GTKHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Meetup'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('assets/codelab.png'),
          SizedBox(height: 8),
          GTKIconAndDetail(Icons.calendar_today, 'October 30'),
          GTKIconAndDetail(Icons.location_city, 'San Francisco'),
          Consumer<GTKApplicationState>(
            builder: (context, appState, _) => GTKAuthentication(
              email: appState.email,
              loginState: appState.loginState,
              startLoginFlow: appState.startLoginFlow,
              verifyEmail: appState.verifyEmail,
              signInWithEmailAndPassword: appState.signInWithEmailAndPassword,
              cancelRegistration: appState.cancelRegistration,
              registerAccount: appState.registerAccount,
              signOut: appState.signOut,
            ),
          ),
          Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          GTKHeader("What we'll be doing"),
          GTKParagraph(
            'Join us for a day full of Firebase Workshops and Pizza!',
          ),
          Consumer<GTKApplicationState>(
            builder: (context, appState, _) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (appState.attendees > 2)
                  GTKParagraph('${appState.attendees} people going')
                else if (appState.attendees == 1)
                  GTKParagraph('1 person going')
                else
                  GTKParagraph('No one going'),
                if (appState.loginState ==
                    GTKApplicationLoginState.loggedIn) ...[
                  GTKYesNoSelection(
                    state: appState.attending,
                    onSelection: (attending) => appState.attending = attending,
                  ),
                  GTKHeader('Discussion'),
                  GTKGuestBook(
                    addMessage: (String message) =>
                        appState.addMessageToGuestBook(message),
                    messages: appState.guestBookMessages,
                  ),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GTKGuestBook extends StatefulWidget {
  GTKGuestBook({@required this.addMessage, @required this.messages});
  final Future<void> Function(String message) addMessage;
  final List<GTKGuestBookMessage> messages;

  @override
  _GTKGuestBookState createState() => _GTKGuestBookState();
}

class _GTKGuestBookState extends State<GTKGuestBook> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_GTKGuestBookState');
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Leave a message',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your message to continue';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 8),
                  GTKButton(
                    child: Row(
                      children: [
                        Icon(Icons.send),
                        SizedBox(width: 4),
                        Text('SEND'),
                      ],
                    ),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        await widget.addMessage(_controller.text);
                        _controller.clear();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
          for (var message in widget.messages)
            GTKParagraph('${message.name}: ${message.message}'),
          SizedBox(height: 8),
        ],
      );
}

class GTKYesNoSelection extends StatelessWidget {
  const GTKYesNoSelection({@required this.state, @required this.onSelection});
  final GTKAttending state;
  final void Function(GTKAttending selection) onSelection;

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case GTKAttending.yes:
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              MaterialButton(
                color: Colors.deepPurple,
                textColor: Colors.white,
                elevation: 0,
                child: Text('YES'),
                onPressed: () => onSelection(GTKAttending.yes),
              ),
              SizedBox(width: 8),
              FlatButton(
                textColor: Colors.deepPurple,
                child: Text('NO'),
                onPressed: () => onSelection(GTKAttending.no),
              ),
            ],
          ),
        );
      case GTKAttending.no:
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              FlatButton(
                textColor: Colors.deepPurple,
                child: Text('YES'),
                onPressed: () => onSelection(GTKAttending.yes),
              ),
              SizedBox(width: 8),
              MaterialButton(
                color: Colors.deepPurple,
                textColor: Colors.white,
                elevation: 0,
                child: Text('NO'),
                onPressed: () => onSelection(GTKAttending.no),
              ),
            ],
          ),
        );
      default:
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              GTKButton(
                child: Text('YES'),
                onPressed: () => onSelection(GTKAttending.yes),
              ),
              SizedBox(width: 8),
              GTKButton(
                child: Text('NO'),
                onPressed: () => onSelection(GTKAttending.no),
              ),
            ],
          ),
        );
    }
  }
}
