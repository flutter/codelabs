// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/providers/providers.dart';
import '../../../shared/views/views.dart';

class ArtistEvents extends StatelessWidget {
  const ArtistEvents({super.key, required this.artist});

  final Artist artist;

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);
    final colors = Theme.of(context).colorScheme;
    return AdaptiveTable<Event>(
      breakpoint: 720,
      items: artist.events,
      itemBuilder: (item, index) {
        final dateParts = item.date.split('/');
        return ListTile(
          leading: Container(
            decoration: BoxDecoration(
              color: colors.primaryContainer,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: dateParts[0],
                      style: TextStyle(
                        fontSize: 18.0,
                        color: colors.onPrimaryContainer,
                      ),
                    ),
                    TextSpan(
                      text: '/',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: colors.onPrimaryContainer,
                      ),
                    ),
                    TextSpan(
                      text: dateParts[1],
                      style: TextStyle(
                        fontSize: 14.0,
                        color: colors.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          title: Text(item.title),
          subtitle: Text(item.location),
          trailing: IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
        );
      },
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Date',
          ),
          numeric: true,
        ),
        DataColumn(
          label: Text(
            'Event',
          ),
        ),
        DataColumn(
          label: Text(
            'Location',
          ),
        ),
        DataColumn(
          label: Text(
            'More info',
          ),
        ),
      ],
      rowBuilder: (item, index) => DataRow.byIndex(index: index, cells: [
        DataCell(
          Text(item.date),
        ),
        DataCell(
          Row(children: [
            Expanded(child: Text(item.title)),
          ]),
        ),
        DataCell(
          Text(item.location),
        ),
        DataCell(
          Clickable(
            child: Text(
              item.link,
              style: TextStyle(
                color: linkColor.value(theme),
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () => launchUrl(Uri.parse('https://docs.flutter.dev')),
          ),
        ),
      ]),
    );
  }
}
