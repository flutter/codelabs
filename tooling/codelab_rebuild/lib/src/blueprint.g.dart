// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blueprint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blueprint _$BlueprintFromJson(Map json) => $checkedCreate(
      'Blueprint',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['name', 'steps'],
          requiredKeys: const ['name', 'steps'],
        );
        final val = Blueprint(
          name: $checkedConvert('name', (v) => v as String),
          steps: $checkedConvert(
              'steps',
              (v) => (v as List<dynamic>)
                  .map((e) => BlueprintStep.fromJson(e as Map))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$BlueprintToJson(Blueprint instance) => <String, dynamic>{
      'name': instance.name,
      'steps': instance.steps,
    };

BlueprintStep _$BlueprintStepFromJson(Map json) => $checkedCreate(
      'BlueprintStep',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'name',
            'steps',
            'base64-contents',
            'command',
            'commands',
            'patch',
            'patch-u',
            'patch-c',
            'path',
            'replace-contents'
          ],
          requiredKeys: const ['name'],
        );
        final val = BlueprintStep(
          name: $checkedConvert('name', (v) => v as String),
          steps: $checkedConvert(
              'steps',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => BlueprintStep.fromJson(e as Map))
                      .toList() ??
                  const []),
          base64Contents:
              $checkedConvert('base64-contents', (v) => v as String?),
          command: $checkedConvert('command', (v) => v as String?),
          commands: $checkedConvert(
              'commands',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          patch: $checkedConvert('patch', (v) => v as String?),
          patchU: $checkedConvert('patch-u', (v) => v as String?),
          patchC: $checkedConvert('patch-c', (v) => v as String?),
          path: $checkedConvert('path', (v) => v as String?),
          replaceContents:
              $checkedConvert('replace-contents', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'base64Contents': 'base64-contents',
        'patchU': 'patch-u',
        'patchC': 'patch-c',
        'replaceContents': 'replace-contents'
      },
    );

Map<String, dynamic> _$BlueprintStepToJson(BlueprintStep instance) =>
    <String, dynamic>{
      'name': instance.name,
      'steps': instance.steps,
      'base64-contents': instance.base64Contents,
      'command': instance.command,
      'commands': instance.commands,
      'patch': instance.patch,
      'patch-u': instance.patchU,
      'patch-c': instance.patchC,
      'path': instance.path,
      'replace-contents': instance.replaceContents,
    };
