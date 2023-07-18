// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_secret.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientSecret _$ClientSecretFromJson(Map<String, dynamic> json) => ClientSecret(
      ClientSecretInstalled.fromJson(json['installed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClientSecretToJson(ClientSecret instance) =>
    <String, dynamic>{
      'installed': instance.installed,
    };

ClientSecretInstalled _$ClientSecretInstalledFromJson(
        Map<String, dynamic> json) =>
    ClientSecretInstalled(
      json['client_id'] as String,
      json['project_id'] as String,
      json['auth_uri'] as String,
      json['token_uri'] as String,
      json['auth_provider_x509_cert_url'] as String,
      json['client_secret'] as String,
      (json['redirect_uris'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ClientSecretInstalledToJson(
        ClientSecretInstalled instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'project_id': instance.projectId,
      'auth_uri': instance.authUri,
      'token_uri': instance.tokenUri,
      'auth_provider_x509_cert_url': instance.authProviderX509CertUrl,
      'client_secret': instance.clientSecret,
      'redirect_uris': instance.redirectUris,
    };
