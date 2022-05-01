import 'package:json_annotation/json_annotation.dart';
import 'package:logging/logging.dart';

part 'configuration.g.dart';

final logger = Logger('configuration');

@JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
)
class Configuration {
  @JsonKey(required: true)
  final String name;
  @JsonKey(required: true)
  final List<ConfigurationStep> steps;

  Configuration({required this.name, required this.steps}) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'Cannot be empty.');
    }
  }

  /// Verifies if this configuration is valid by checking that the steps
  /// are valid.
  bool get isValid =>
      steps.map((step) => step.isValid).reduce((fst, snd) => fst & snd);

  factory Configuration.fromJson(Map json) => _$ConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);

  @override
  String toString() => 'Configuration: ${toJson()}';
}

@JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
)
class ConfigurationStep {
  @JsonKey(required: true)
  final String name;
  final List<ConfigurationStep> steps;

  final String? command;
  final List<String> commands;
  final String? patch;
  final String? path;
  @JsonKey(name: 'replace-contents')
  final String? replaceContents;

  ConfigurationStep({
    required this.name,
    this.steps = const [],
    this.command,
    this.commands = const [],
    this.patch,
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
        command == null &&
        commands.isEmpty &&
        replaceContents == null) {
      logger.warning('Invalid step with no action: $this');
      return false;
    }

    // If there are sub steps...
    if (steps.isNotEmpty) {
      // there shouldn't be any other configuration data,
      if (patch != null ||
          command != null ||
          commands.isNotEmpty ||
          replaceContents != null) {
        logger.warning(
            'Invalid step sub-steps and one (or more) of patch, command(s), '
            'or replace-contents: $this');
        return false;
      }

      // and the sub-steps should all be valid.
      if (!steps
          .map((subStep) => subStep.isValid)
          .reduce((fst, snd) => fst & snd)) return false;
    }

    // If we have a patch, we need a file to apply the patch to.
    if (patch != null && path == null) {
      logger.warning('Invalid step, patch with no target path: $this');
      return false;
    }

    // If we have replace-contents, we need a file to apply it to.
    if (replaceContents != null && path == null) {
      logger
          .warning('Invalid step, replace-contents with no target path: $this');
      return false;
    }

    // If we have a diff, we don't want an exec or a replace-contents config
    if (patch != null &&
        (command != null || commands.isNotEmpty || replaceContents != null)) {
      logger.warning(
          'Invalid step, patch with command(s) and/or replace-contents: $this');
      return false;
    }

    // Likewise, if there is a command, there mustn't be a patch or a replace-contents.
    if ((command != null || commands.isNotEmpty) &&
        (patch != null || replaceContents != null)) {
      logger.warning(
          'Invalid step, command(s) with patch and/or replace-contents: $this');
      return false;
    }

    // If we have a command, it mustn't be an empty command.
    if (command != null && command!.isEmpty) {
      logger.warning('Invalid step, empty command: $this');
      return false;
    }

    if (commands.isNotEmpty &&
        commands
            .map((command) => command.isEmpty)
            .reduce((fst, snd) => fst | snd)) {
      logger.warning('Invalid step, commands with empty command: $this');
      return false;
    }

    return true;
  }

  factory ConfigurationStep.fromJson(Map json) =>
      _$ConfigurationStepFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurationStepToJson(this);

  @override
  String toString() => 'ConfigurationStep: ${toJson()}';
}
