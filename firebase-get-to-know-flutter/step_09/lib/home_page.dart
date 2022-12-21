// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';
import 'guest_book.dart';
import 'src/authentication.dart';
import 'src/widgets.dart';
import 'yes_no_selection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Meetup'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('assets/codelab.png'),
          const SizedBox(height: 8),
          Consumer<ApplicationState>(
            builder: (context, appState, _) =>
                IconAndDetail(Icons.calendar_today, appState.eventDate),
          ),
          const IconAndDetail(Icons.location_city, 'San Francisco'),
          Consumer<ApplicationState>(
            builder: (context, appState, _) => AuthFunc(
              loggedIn: appState.loggedIn,
              signOut: () {
                FirebaseAuth.instance.signOut();
              },
              enableFreeSwag: appState.enableFreeSwag,
            ),
          ),
          const Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          const Header("What we'll be doing"),
          Consumer<ApplicationState>(
            builder: (context, appState, _) => Paragraph(
              appState.callToAction,
            ),
          ),
          Consumer<ApplicationState>(
            builder: (context, appState, _) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (appState.attendees >= 2)
                  Paragraph('${appState.attendees} people going')
                else if (appState.attendees == 1)
                  const Paragraph('1 person going')
                else
                  const Paragraph('No one going'),
                if (appState.loggedIn) ...[
                  YesNoSelection(
                    state: appState.attending,
                    onSelection: (attending) => appState.attending = attending,
                  ),
                  const Header('Discussion'),
                  GuestBook(
                    addMessage: (message) =>
                        appState.addMessageToGuestBook(message),
                    messages: appState.guestBookMessages,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
