// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blueprint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blueprint _$BlueprintFromJson(Map json) =>
    $checkedCreate('Blueprint', json, ($checkedConvert) {
      $checkKeys(
        json,
        allowedKeys: const ['name', 'steps'],
        requiredKeys: const ['name', 'steps'],
      );
      final val = Blueprint(
        name: $checkedConvert('name', (v) => v as String),
        steps: $checkedConvert(
          'steps',
          (v) =>
              (v as List<dynamic>)
                  .map((e) => BlueprintStep.fromJson(e as Map))
                  .toList(),
        ),
      );
      return val;
    });

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
        'path',
        'base64-contents',
        'patch',
        'patch-u',
        'patch-c',
        'replace-contents',
        'platforms',
        'dart',
        'flutter',
        'git',
        'pod',
        'rm',
        'mkdir',
        'mkdirs',
        'rmdir',
        'rmdirs',
        'copydir',
        'copy',
        'renamedir',
        'rename',
        'retrieve-url',
        'tar',
        '7z',
        'strip-lines-containing',
        'stop',
        'xcode-add-file',
        'xcode-project-path',
        'iphoneos-deployment-target',
        'macosx-deployment-target',
        'full-screen-macos-main-menu-xib',
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
            const [],
      ),
      base64Contents: $checkedConvert('base64-contents', (v) => v as String?),
      patch: $checkedConvert('patch', (v) => v as String?),
      patchU: $checkedConvert('patch-u', (v) => v as String?),
      patchC: $checkedConvert('patch-c', (v) => v as String?),
      path: $checkedConvert('path', (v) => v as String?),
      replaceContents: $checkedConvert('replace-contents', (v) => v as String?),
      mkdir: $checkedConvert('mkdir', (v) => v as String?),
      mkdirs: $checkedConvert(
        'mkdirs',
        (v) =>
            (v as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
      ),
      rmdir: $checkedConvert('rmdir', (v) => v as String?),
      rmdirs: $checkedConvert(
        'rmdirs',
        (v) =>
            (v as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
      ),
      copydir: $checkedConvert(
        'copydir',
        (v) => v == null ? null : FromTo.fromJson(v as Map),
      ),
      copy: $checkedConvert(
        'copy',
        (v) => v == null ? null : FromTo.fromJson(v as Map),
      ),
      renamedir: $checkedConvert(
        'renamedir',
        (v) => v == null ? null : FromTo.fromJson(v as Map),
      ),
      rename: $checkedConvert(
        'rename',
        (v) => v == null ? null : FromTo.fromJson(v as Map),
      ),
      platforms: $checkedConvert(
        'platforms',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      dart: $checkedConvert('dart', (v) => v as String?),
      flutter: $checkedConvert('flutter', (v) => v as String?),
      git: $checkedConvert('git', (v) => v as String?),
      rm: $checkedConvert('rm', (v) => v as String?),
      pod: $checkedConvert('pod', (v) => v as String?),
      retrieveUrl: $checkedConvert('retrieve-url', (v) => v as String?),
      tar: $checkedConvert('tar', (v) => v as String?),
      sevenZip: $checkedConvert('7z', (v) => v as String?),
      stripLinesContaining: $checkedConvert(
        'strip-lines-containing',
        (v) => v as String?,
      ),
      stop: $checkedConvert('stop', (v) => v as bool?),
      xcodeAddFile: $checkedConvert('xcode-add-file', (v) => v as String?),
      xcodeProjectPath: $checkedConvert(
        'xcode-project-path',
        (v) => v as String?,
      ),
      macOsMainMenuXib: $checkedConvert(
        'full-screen-macos-main-menu-xib',
        (v) => v as String?,
      ),
      iphoneosDeploymentTarget: $checkedConvert(
        'iphoneos-deployment-target',
        (v) => v as String?,
      ),
      macosxDeploymentTarget: $checkedConvert(
        'macosx-deployment-target',
        (v) => v as String?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'base64Contents': 'base64-contents',
    'patchU': 'patch-u',
    'patchC': 'patch-c',
    'replaceContents': 'replace-contents',
    'retrieveUrl': 'retrieve-url',
    'sevenZip': '7z',
    'stripLinesContaining': 'strip-lines-containing',
    'xcodeAddFile': 'xcode-add-file',
    'xcodeProjectPath': 'xcode-project-path',
    'macOsMainMenuXib': 'full-screen-macos-main-menu-xib',
    'iphoneosDeploymentTarget': 'iphoneos-deployment-target',
    'macosxDeploymentTarget': 'macosx-deployment-target',
  },
);

Map<String, dynamic> _$BlueprintStepToJson(BlueprintStep instance) =>
    <String, dynamic>{
      'name': instance.name,
      'steps': instance.steps,
      'path': instance.path,
      'base64-contents': instance.base64Contents,
      'patch': instance.patch,
      'patch-u': instance.patchU,
      'patch-c': instance.patchC,
      'replace-contents': instance.replaceContents,
      'platforms': instance.platforms,
      'dart': instance.dart,
      'flutter': instance.flutter,
      'git': instance.git,
      'pod': instance.pod,
      'rm': instance.rm,
      'mkdir': instance.mkdir,
      'mkdirs': instance.mkdirs,
      'rmdir': instance.rmdir,
      'rmdirs': instance.rmdirs,
      'copydir': instance.copydir,
      'copy': instance.copy,
      'renamedir': instance.renamedir,
      'rename': instance.rename,
      'retrieve-url': instance.retrieveUrl,
      'tar': instance.tar,
      '7z': instance.sevenZip,
      'strip-lines-containing': instance.stripLinesContaining,
      'stop': instance.stop,
      'xcode-add-file': instance.xcodeAddFile,
      'xcode-project-path': instance.xcodeProjectPath,
      'iphoneos-deployment-target': instance.iphoneosDeploymentTarget,
      'macosx-deployment-target': instance.macosxDeploymentTarget,
      'full-screen-macos-main-menu-xib': instance.macOsMainMenuXib,
    };

FromTo _$FromToFromJson(Map json) =>
    $checkedCreate('FromTo', json, ($checkedConvert) {
      $checkKeys(json, allowedKeys: const ['from', 'to']);
      final val = FromTo(
        from: $checkedConvert('from', (v) => v as String),
        to: $checkedConvert('to', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$FromToToJson(FromTo instance) => <String, dynamic>{
  'from': instance.from,
  'to': instance.to,
};
