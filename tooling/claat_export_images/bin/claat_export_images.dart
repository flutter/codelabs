// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:claat_export_images/claat_export_images.dart';
import 'package:claat_export_images/client_secret.dart';
import 'package:googleapis/docs/v1.dart' as google_docs;
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
import 'package:image/image.dart';
import 'package:path/path.dart' as path;

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
    help: 'The document ID to export the images of',
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
  final uris = claatImageUris(document);
  Directory('img').createSync();
  int imageCount = 0;
  for (final uri in uris) {
    final response = await http.get(uri);
    if (PngDecoder().isValidFile(response.bodyBytes)) {
      File(path.join('img', '${uri.pathSegments.last}.png'))
          .writeAsBytesSync(response.bodyBytes);
      imageCount += 1;
    } else if (JpegDecoder().isValidFile(response.bodyBytes)) {
      File(path.join('img', '${uri.pathSegments.last}.jpg'))
          .writeAsBytesSync(response.bodyBytes);
      imageCount += 1;
    } else if (GifDecoder().isValidFile(response.bodyBytes)) {
      File(path.join('img', '${uri.pathSegments.last}.gif'))
          .writeAsBytesSync(response.bodyBytes);
      imageCount += 1;
    } else if (WebPDecoder().isValidFile(response.bodyBytes)) {
      File(path.join('img', '${uri.pathSegments.last}.webp'))
          .writeAsBytesSync(response.bodyBytes);
      imageCount += 1;
    } else {
      print('Unknown image format: $uri');
    }
  }
  print('Wrote $imageCount images to img/');
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
