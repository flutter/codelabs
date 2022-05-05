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
  bool get isValid => !steps.any((s) => !s.isValid);

  factory Blueprint.fromJson(Map json) => _$BlueprintFromJson(json);

  /// Load a blueprint, either from a file path, or directly as YAML content.
  factory Blueprint.load(String sourcePathOrYaml) {
    String yamlContent;
    Uri? sourceUri;

    if (FileSystemEntity.isFileSync(sourcePathOrYaml)) {
      yamlContent = File(sourcePathOrYaml).readAsStringSync();
      sourceUri = Uri.parse(sourcePathOrYaml);
    } else {
      yamlContent = sourcePathOrYaml;
    }

    final blueprint = checkedYamlDecode(
      yamlContent,
      (m) => Blueprint.fromJson(m!),
      sourceUrl: sourceUri,
    );
    return blueprint;
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

  @JsonKey(name: 'base64-contents')
  final String? base64Contents;
  final String? command;
  final List<String> commands;
  final String? patch;
  @JsonKey(name: 'patch-u')
  final String? patchU;
  @JsonKey(name: 'patch-c')
  final String? patchC;
  final String? path;
  @JsonKey(name: 'replace-contents')
  final String? replaceContents;

  BlueprintStep({
    required this.name,
    this.steps = const [],
    this.base64Contents,
    this.command,
    this.commands = const [],
    this.patch,
    this.patchU,
    this.patchC,
    this.path,
    this.replaceContents,
  }) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'Cannot be empty.');
    }
  }

  /// Verifies this step, and it's sub-steps, are valid.
  bool get isValid {
    final steps = this.steps;

    // If there aren't sub-steps, then there should be something else to do.
    if (steps.isEmpty &&
        patch == null &&
        patchU == null &&
        patchC == null &&
        command == null &&
        commands.isEmpty &&
        replaceContents == null &&
        base64Contents == null) {
      _logger.warning('Invalid step with no action: $this');
      return false;
    }

    // If there are sub steps...
    if (steps.isNotEmpty) {
      // there shouldn't be any other actions,
      if (base64Contents != null ||
          patch != null ||
          patchU != null ||
          patchC != null ||
          command != null ||
          commands.isNotEmpty ||
          replaceContents != null) {
        _logger.warning(
            'Invalid step sub-steps and one (or more) of patch, command(s), '
            'base64-contents or replace-contents: $this');
        return false;
      }

      // and the sub-steps should all be valid.
      if (!steps
          .map((subStep) => subStep.isValid)
          .reduce((fst, snd) => fst & snd)) return false;
    }

    // If we have a patch, we need a file to apply the patch to.
    if ((patch != null || patchU != null || patchC != null) && path == null) {
      _logger.warning('Invalid step, patch with no target path: $this');
      return false;
    }

    // We can't have both patch and patch-u
    if (patch != null && patchU != null && patchC != null) {
      _logger.warning('Invalid step, both patch and patch-u specified: $this');
      return false;
    }

    // If we have replace-contents, we need a file to apply it to.
    if (replaceContents != null && path == null) {
      _logger
          .warning('Invalid step, replace-contents with no target path: $this');
      return false;
    }

    // If we have base64-contents, we need a file to apply it to.
    if (base64Contents != null && path == null) {
      _logger
          .warning('Invalid step, base64-contents with no target path: $this');
      return false;
    }

    // If we have a patch, we don't want a replace-contents, base64-contents or command(s)
    if ((patch != null || patchU != null || patchC != null) &&
        (command != null ||
            commands.isNotEmpty ||
            replaceContents != null ||
            base64Contents != null)) {
      _logger.warning(
          'Invalid step, patch with command(s), replace-contents, or base64-contents: $this');
      return false;
    }

    // Likewise, if there is a command, there mustn't be a patch, patch-u, replace-contents or base64-contents.
    if ((command != null || commands.isNotEmpty) &&
        (patch != null ||
            patchU != null ||
            patchC != null ||
            replaceContents != null ||
            base64Contents != null)) {
      _logger.warning(
          'Invalid step, command(s) with patch and/or replace-contents: $this');
      return false;
    }

    // If we have a command, it mustn't be an empty command.
    if (command != null && command!.isEmpty) {
      _logger.warning('Invalid step, empty command: $this');
      return false;
    }

    if (commands.isNotEmpty &&
        commands
            .map((command) => command.isEmpty)
            .reduce((fst, snd) => fst | snd)) {
      _logger.warning('Invalid step, commands with empty command: $this');
      return false;
    }

    return true;
  }

  factory BlueprintStep.fromJson(Map json) => _$BlueprintStepFromJson(json);

  Map<String, dynamic> toJson() => _$BlueprintStepToJson(this);

  @override
  String toString() => 'BlueprintStep: ${toJson()}';
}
