import 'package:json_annotation/json_annotation.dart';

part 'configuration.g.dart';

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
  final List<ConfigurationStep>? steps;

  final StepExec? exec;
  final String? patch;
  final String? path;
  @JsonKey(name: 'replace-contents')
  final String? replaceContents;

  ConfigurationStep({
    required this.name,
    this.steps,
    this.exec,
    this.patch,
    this.path,
    this.replaceContents,
  }) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'Cannot be empty.');
    }
  }

  bool get isValid {
    final steps = this.steps;

    // If there are sub steps, we don't want any other configuration data
    if ((steps == null || steps.isEmpty) &&
        patch == null &&
        exec == null &&
        path == null &&
        replaceContents == null) return false;

    // If there aren't steps, then there should be something else to do
    if ((steps != null && steps.isNotEmpty) &&
        (patch != null ||
            exec != null ||
            path != null ||
            replaceContents != null)) return false;

    // If we have a diff, we need a file to apply to
    if (patch != null && path == null) return false;

    // If we have replace-contents, we need a file to apply it to
    if (replaceContents != null && path == null) return false;

    // If we have a diff, we don't want an exec or a replace-contents config
    if (patch != null && (exec != null || replaceContents != null)) {
      return false;
    }

    // Likewise, if there is an exec, there shouldn't be a file or a replace-contents
    if (exec != null && (path != null || replaceContents != null)) return false;

    return true;
  }

  factory ConfigurationStep.fromJson(Map json) =>
      _$ConfigurationStepFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurationStepToJson(this);

  @override
  String toString() => 'ConfigurationStep: ${toJson()}';
}

@JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
)
class StepExec {
  final String? command;
  final List<String> commands;
  final String? path;

  StepExec({
    this.command,
    this.commands = const [],
    this.path,
  }) {
    if (commands.isEmpty && command == null) {
      throw ArgumentError.value(command, 'command', 'Cannot be empty.');
    }
  }

  factory StepExec.fromJson(Map json) => _$StepExecFromJson(json);

  Map<String, dynamic> toJson() => _$StepExecToJson(this);

  @override
  String toString() => 'StepExec: ${toJson()}';
}
