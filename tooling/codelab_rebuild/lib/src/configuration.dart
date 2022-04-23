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
  final String? exec;
  final String? file;
  @JsonKey(name: 'prepend-contents')
  final String? prependContents;
  @JsonKey(name: 'replace-contents')
  final String? replaceContents;
  @JsonKey(name: 'append-contents')
  final String? appendContents;

  ConfigurationStep({
    required this.name,
    this.steps,
    this.exec,
    this.file,
    this.prependContents,
    this.replaceContents,
    this.appendContents,
  }) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'Cannot be empty.');
    }
  }

  factory ConfigurationStep.fromJson(Map json) =>
      _$ConfigurationStepFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurationStepToJson(this);

  @override
  String toString() => 'ConfigurationStep: ${toJson()}';
}
