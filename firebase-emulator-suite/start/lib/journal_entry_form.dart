import 'package:flutter/material.dart';

import 'entry.dart';

typedef SubmitCallback = Function(Entry);

class EntryForm extends StatefulWidget {
  final SubmitCallback onSubmit;
  const EntryForm({super.key, required this.onSubmit});

  @override
  State<EntryForm> createState() => _EntryFormState();
}

class _EntryFormState extends State<EntryForm> {
  final _formKey = GlobalKey<FormState>();

  late String title;
  late String text;
  late String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Title'),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  title = value;
                  return null;
                },
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Date (DD/MM/YYYY):'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  date = value;
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Text'),
                maxLines: 10,
                minLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  text = value;
                  return null;
                },
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        final entry = Entry(
                          title: title,
                          text: text,
                          date: date,
                        );

                        widget.onSubmit(entry);

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Submitting Entry')),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
