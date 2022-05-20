import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../classes/classes.dart';
import '../providers/providers.dart';
import 'views.dart';

class Events extends StatelessWidget {
  const Events({super.key, required this.artist, required this.constraints});

  final Artist artist;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);
    if (constraints.maxWidth > 820) {
      return ConstrainedBox(
        constraints: BoxConstraints(minWidth: constraints.minWidth),
        child: DataTable(
          horizontalMargin: 5.0,
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
          rows: <DataRow>[
            for (final event in artist.events)
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    Text(event.date),
                  ),
                  DataCell(
                    Row(children: [
                      Expanded(child: Text(event.title)),
                    ]),
                  ),
                  DataCell(
                    Text(event.location),
                  ),
                  DataCell(
                    Clickable(
                      child: Text(
                        event.link,
                        style: TextStyle(
                          color: linkColor.value(theme),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () =>
                          launchUrl(Uri.parse('https://docs.flutter.dev')),
                    ),
                  ),
                ],
              ),
          ],
        ),
      );
    }
    return ListView(
      shrinkWrap: true,
      children: artist.events.map((e) => buildTile(context, e)).toList(),
    );
  }

  Widget buildTile(BuildContext context, Event event) {
    final dateParts = event.date.split('/');
    final colors = Theme.of(context).colorScheme;
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
      title: Text(event.title),
      subtitle: Text(event.location),
      trailing: IconButton(
        icon: const Icon(Icons.info_outline),
        onPressed: () {},
      ),
    );
  }
}
