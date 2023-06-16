import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:claat_export/client_secret.dart';
import 'package:googleapis/docs/v1.dart' as google_docs;
import 'package:googleapis_auth/auth_io.dart';

void main(List<String> arguments) async {
  final argParser = ArgParser();
  argParser.addFlag(
    'help',
    abbr: 'h',
    negatable: false,
    help: 'Display usage',
  );
  argParser.addOption(
    'client-secrets',
    abbr: 's',
    mandatory: true,
    help: 'The path to the client_secrets.json file',
  );
  argParser.addOption(
    'doc-id',
    abbr: 'd',
    mandatory: true,
    help: 'The document ID to export',
  );
  argParser.parse(arguments);
  final args = argParser.parse(arguments);
  if (args['help']) {
    print(argParser.usage);
    exit(-1);
  }

  final clientSecret = ClientSecret.fromJson(
    jsonDecode(
      await File(args['client-secrets']).readAsString(),
    ),
  );

  final gDocID = args['doc-id'];

  final client = await obtainCredentials(
    clientID: clientSecret.installed.clientId,
    clientSecret: clientSecret.installed.clientSecret,
  );
  final apiClient = google_docs.DocsApi(client);
  final document = await apiClient.documents
      .get(gDocID, suggestionsViewMode: 'PREVIEW_WITHOUT_SUGGESTIONS');
  final enc = JsonEncoder.withIndent('  ');
  final output = File('$gDocID.json');
  output.writeAsString(enc.convert(document.toJson()));
  print('Wrote to ${output.path}');
}

Future<AuthClient> obtainCredentials(
        {required String clientID, required String clientSecret}) async =>
    await clientViaUserConsent(
      ClientId(clientID, clientSecret),
      [google_docs.DocsApi.driveReadonlyScope],
      _prompt,
    );

void _prompt(String url) {
  print('Please go to the following URL and grant access:');
  print('  => $url');
  print('');
}
