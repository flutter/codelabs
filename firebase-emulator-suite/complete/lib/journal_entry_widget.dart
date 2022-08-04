import 'package:flutter/material.dart';

import 'entry.dart';

class EntryView extends StatelessWidget {
  final Entry entry;

  const EntryView({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                entry.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Date: ${entry.date}',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            const Divider(),
            Expanded(
              child: Text(
                entry.text,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      height: 1.3,
                      wordSpacing: 1.2,
                      letterSpacing: 1.05,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
