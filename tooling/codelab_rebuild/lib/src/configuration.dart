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

  final String? command;
  final List<String> commands;
  final String? patch;
  final String? path;
  @JsonKey(name: 'replace-contents')
  final String? replaceContents;

  ConfigurationStep({
    required this.name,
    this.steps,
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

  bool get isValid {
    final steps = this.steps;

    // If there aren't steps, then there should be something else to do
    if ((steps == null || steps.isEmpty) &&
        patch == null &&
        command == null &&
        commands.isEmpty &&
        replaceContents == null) return false;

    // If there are sub steps, we don't want any other configuration data
    if ((steps != null && steps.isNotEmpty) &&
        (patch != null ||
            command != null ||
            commands.isNotEmpty ||
            replaceContents != null)) return false;

    // If we have a patch, we need a file to apply to
    if (patch != null && path == null) return false;

    // If we have replace-contents, we need a file to apply it to
    if (replaceContents != null && path == null) return false;

    // If we have a diff, we don't want an exec or a replace-contents config
    if (patch != null &&
        (command != null || commands.isNotEmpty || replaceContents != null)) {
      return false;
    }

    // Likewise, if there is a command, there shouldn't be a patch or a replace-contents
    if ((command != null || commands.isNotEmpty) &&
        (patch != null || replaceContents != null)) return false;

    return true;
  }

  factory ConfigurationStep.fromJson(Map json) =>
      _$ConfigurationStepFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurationStepToJson(this);

  @override
  String toString() => 'ConfigurationStep: ${toJson()}';
}
