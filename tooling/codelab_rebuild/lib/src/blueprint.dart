// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:checked_yaml/checked_yaml.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logging/logging.dart';

import 'rebuild_blueprint.dart';

part 'blueprint.g.dart';

final _logger = Logger('blueprint');

@JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
)
class Blueprint {
  @JsonKey(required: true)
  final String name;
  @JsonKey(required: true)
  final List<BlueprintStep> steps;

  Blueprint({required this.name, required this.steps}) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'Cannot be empty.');
    }
  }

  /// Verifies if this blueprint is valid by checking that the steps
  /// are valid.
  bool get isValid => !steps.any((s) => s.isNotValid);

  factory Blueprint.fromJson(Map json) => _$BlueprintFromJson(json);

  /// Load a blueprint from a file
  factory Blueprint.load(File source) {
    String yamlContent;
    Uri? sourceUri;

    yamlContent = source.readAsStringSync();
    sourceUri = source.uri;

    final blueprint = checkedYamlDecode(
      yamlContent,
      (m) => Blueprint.fromJson(m!),
      sourceUrl: sourceUri,
    );
    return blueprint;
  }

  factory Blueprint.fromString(String yaml) {
    return checkedYamlDecode(
      yaml,
      (m) => Blueprint.fromJson(m!),
    );
  }

  /// Rebuild a blueprint in a target directory.
  Future<void> rebuild(Directory cwd) => rebuildFromBlueprint(cwd, this);

  Map<String, dynamic> toJson() => _$BlueprintToJson(this);

  @override
  String toString() => 'Blueprint: ${toJson()}';
}

@JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
)
class BlueprintStep {
  @JsonKey(required: true)
  final String name;
  final List<BlueprintStep> steps;

  final String? path;

  @JsonKey(name: 'base64-contents')
  final String? base64Contents;
  final String? patch;
  @JsonKey(name: 'patch-u')
  final String? patchU;
  @JsonKey(name: 'patch-c')
  final String? patchC;
  @JsonKey(name: 'replace-contents')
  final String? replaceContents;

  // Platforms: "linux" "macos" "windows"
  final List<String>? platforms;

  final String? dart;
  final String? flutter;
  final String? git;
  final String? pod;
  final String? rm;

  final String? mkdir;
  final List<String> mkdirs;
  final String? rmdir;
  final List<String> rmdirs;
  final FromTo? copydir;
  final FromTo? copy;
  final FromTo? rename;

  // Retreiving URLs and unarchiving them
  @JsonKey(name: 'retrieve-url')
  final String? retrieveUrl;
  final String? tar;
  @JsonKey(name: '7z')
  final String? sevenZip;

  // file modification
  @JsonKey(name: 'strip-lines-containing')
  final String? stripLinesContaining;

  // For debugging & development purposes
  final bool? stop;

  BlueprintStep({
    required this.name,
    this.steps = const [],
    this.base64Contents,
    this.patch,
    this.patchU,
    this.patchC,
    this.path,
    this.replaceContents,
    this.mkdir,
    this.mkdirs = const [],
    this.rmdir,
    this.rmdirs = const [],
    this.copydir,
    this.copy,
    this.rename,
    this.platforms,
    this.dart,
    this.flutter,
    this.git,
    this.rm,
    this.pod,
    this.retrieveUrl,
    this.tar,
    this.sevenZip,
    this.stripLinesContaining,
    this.stop,
  }) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'Cannot be empty.');
    }
  }

  bool get isNotValid => !isValid;

  /// Verifies this step, and it's sub-steps, are valid.
  bool get isValid {
    final steps = this.steps;

    // Stop is for debugging only.
    if (stop != null && stop == true) return true;

    // If there aren't sub-steps, then there should be something else to do.
    if (steps.isEmpty &&
        patch == null &&
        patchU == null &&
        patchC == null &&
        replaceContents == null &&
        base64Contents == null &&
        mkdir == null &&
        mkdirs.isEmpty &&
        rmdir == null &&
        rmdirs.isEmpty &&
        copydir == null &&
        copy == null &&
        rename == null &&
        rm == null &&
        pod == null &&
        dart == null &&
        flutter == null &&
        git == null &&
        retrieveUrl == null &&
        tar == null &&
        sevenZip == null &&
        stripLinesContaining == null) {
      _logger.warning('Invalid step with no action: $name');
      return false;
    }

    // If there are sub steps...
    if (steps.isNotEmpty) {
      // there shouldn't be any other actions,
      if (base64Contents != null ||
          patch != null ||
          patchU != null ||
          patchC != null ||
          replaceContents != null ||
          mkdir != null ||
          mkdirs.isNotEmpty ||
          rmdir != null ||
          rmdirs.isNotEmpty ||
          copydir != null ||
          copy != null ||
          rename != null ||
          rm != null ||
          pod != null ||
          dart != null ||
          flutter != null ||
          git != null ||
          retrieveUrl != null ||
          tar != null ||
          sevenZip != null ||
          stripLinesContaining != null) {
        _logger.warning('Invalid step sub-steps and other commands: $name');
        return false;
      }

      // and the sub-steps should all be valid.
      if (steps.any((subStep) => subStep.isNotValid)) return false;
    }

    // If we have a patch, we need a file to apply the patch to.
    if ((patch != null || patchU != null || patchC != null) && path == null) {
      _logger.warning('Invalid step, patch with no target path: $name');
      return false;
    }

    // We can't have patch and patch-u and patch-c
    if (patch != null && patchU != null && patchC != null) {
      _logger.warning(
          'Invalid step, multiple of patch, patch-u and patch-c specified: $name');
      return false;
    }

    // If we have replace-contents, we need a file to apply it to.
    if (replaceContents != null && path == null) {
      _logger
          .warning('Invalid step, replace-contents with no target path: $name');
      return false;
    }

    // If we have base64-contents, we need a file to apply it to.
    if (base64Contents != null && path == null) {
      _logger
          .warning('Invalid step, base64-contents with no target path: $name');
      return false;
    }

    // If we have a retrieve-url, we need a path to write it to
    if (retrieveUrl != null && path == null) {
      _logger.warning('Invalid step, retrieve-url with no target path: $name');
      return false;
    }

    // If we have a tar archive, we need a path to write it to
    if (tar != null && path == null) {
      _logger.warning('Invalid step, tar with no target path: $name');
      return false;
    }

    // If we have a 7z archive, we need a path to write it to
    if (sevenZip != null && path == null) {
      _logger.warning('Invalid step, 7z with no target path: $name');
      return false;
    }

    // If we have a stripLinesContaining, we need a path to strip
    if (stripLinesContaining != null && path == null) {
      _logger.warning(
          'Invalid step, strip-lines-containing with no target path: $name');
      return false;
    }

    // If we have a patch, we don't want a replace-contents, base64-contents or command(s)
    if ((patch != null || patchU != null || patchC != null) &&
        (replaceContents != null ||
            base64Contents != null ||
            mkdir != null ||
            mkdirs.isNotEmpty ||
            rmdir != null ||
            rmdirs.isNotEmpty ||
            copydir != null ||
            copy != null ||
            rename != null ||
            pod != null ||
            dart != null ||
            flutter != null ||
            git != null ||
            retrieveUrl != null ||
            tar != null ||
            sevenZip != null)) {
      _logger.warning(
          'Invalid step, patch with command(s), replace-contents, or base64-contents: $name');
      return false;
    }

    return true;
  }

  factory BlueprintStep.fromJson(Map json) => _$BlueprintStepFromJson(json);

  Map<String, dynamic> toJson() => _$BlueprintStepToJson(this);

  @override
  String toString() => 'BlueprintStep: ${toJson()}';
}

@JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
)
class FromTo {
  final String from;
  final String to;
  FromTo({required this.from, required this.to});

  factory FromTo.fromJson(Map json) => _$FromToFromJson(json);

  Map<String, dynamic> toJson() => _$FromToToJson(this);

  @override
  String toString() => 'CopyDirs: ${toJson()}';
}
