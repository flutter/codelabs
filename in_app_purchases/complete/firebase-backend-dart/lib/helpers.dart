// Copyright (c) 2022, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';

/// Serves [handler] on [InternetAddress.anyIPv4] using the port returned by
/// [listenPort].
///
/// The returned [Future] will complete using [terminateRequestFuture] after
/// closing the server.
Future<void> serveHandler(Handler handler) async {
  final port = listenPort();

  final server = await serve(
    handler,
    InternetAddress.anyIPv4, // Allows external connections
    port,
  );
  print('Serving at http://${server.address.host}:${server.port}');

  await terminateRequestFuture();

  await server.close();
}

/// Returns the port to listen on from environment variable or uses the default
/// `8080`.
///
/// See https://cloud.google.com/run/docs/reference/container-contract#port
int listenPort() => int.parse(Platform.environment['PORT'] ?? '8080');

/// Returns a [Future] that completes when the process receives a
/// [ProcessSignal] requesting a shutdown.
///
/// [ProcessSignal.sigint] is listened to on all platforms.
///
/// [ProcessSignal.sigterm] is listened to on all platforms except Windows.
Future<void> terminateRequestFuture() {
  final completer = Completer<bool>.sync();

  // sigIntSub is copied below to avoid a race condition - ignoring this lint
  // ignore: cancel_subscriptions
  StreamSubscription? sigIntSub, sigTermSub;

  Future<void> signalHandler(ProcessSignal signal) async {
    print('Received signal $signal - closing');

    final subCopy = sigIntSub;
    if (subCopy != null) {
      sigIntSub = null;
      await subCopy.cancel();
      sigIntSub = null;
      if (sigTermSub != null) {
        await sigTermSub!.cancel();
        sigTermSub = null;
      }
      completer.complete(true);
    }
  }

  sigIntSub = ProcessSignal.sigint.watch().listen(signalHandler);

  // SIGTERM is not supported on Windows. Attempting to register a SIGTERM
  // handler raises an exception.
  if (!Platform.isWindows) {
    sigTermSub = ProcessSignal.sigterm.watch().listen(signalHandler);
  }

  return completer.future;
}

/// Returns a [Future] that completes with the
/// [Project ID](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
/// for the current Google Cloud Project.
///
/// First, if an environment variable with a name in
/// [gcpProjectIdEnvironmentVariables] exists, that is returned.
/// (The list is checked in order.) This is useful for local development.
///
/// If no such environment variable exists, then we assume the code is running
/// on Google Cloud and
/// [Project metadata](https://cloud.google.com/compute/docs/metadata/default-metadata-values#project_metadata)
/// is queried for the Project ID.
Future<String> currentProjectId() async {
  for (var envKey in gcpProjectIdEnvironmentVariables) {
    final value = Platform.environment[envKey];
    if (value != null) return value;
  }

  const host = 'http://metadata.google.internal/';
  final url = Uri.parse('$host/computeMetadata/v1/project/project-id');

  try {
    final response = await http.get(
      url,
      headers: {'Metadata-Flavor': 'Google'},
    );

    if (response.statusCode != 200) {
      throw HttpException(
        '${response.body} (${response.statusCode})',
        uri: url,
      );
    }

    return response.body;
  } on SocketException {
    stderr.writeln(
      '''
Could not connect to $host.
If not running on Google Cloud, one of these environment variables must be set
to the target Google Project ID:
${gcpProjectIdEnvironmentVariables.join('\n')}
''',
    );
    rethrow;
  }
}

/// A set of typical environment variables that are likely to represent the
/// current Google Cloud project ID.
///
/// For context, see:
/// * https://cloud.google.com/functions/docs/env-var
/// * https://cloud.google.com/compute/docs/gcloud-compute#default_project
/// * https://github.com/GoogleContainerTools/gcp-auth-webhook/blob/08136ca171fe5713cc70ef822c911fbd3a1707f5/server.go#L38-L44
///
/// Note: these are ordered starting from the most current/canonical to least.
/// (At least as could be determined at the time of writing.)
const gcpProjectIdEnvironmentVariables = {
  'GCP_PROJECT',
  'GCLOUD_PROJECT',
  'CLOUDSDK_CORE_PROJECT',
  'GOOGLE_CLOUD_PROJECT',
};
