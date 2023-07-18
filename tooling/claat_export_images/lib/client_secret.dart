// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'client_secret.g.dart';

@JsonSerializable()
class ClientSecret {
  final ClientSecretInstalled installed;

  ClientSecret(this.installed);

  factory ClientSecret.fromJson(Map<String, dynamic> json) =>
      _$ClientSecretFromJson(json);

  Map<String, dynamic> toJson() => _$ClientSecretToJson(this);
}

@JsonSerializable()
class ClientSecretInstalled {
  @JsonKey(name: 'client_id')
  final String clientId;

  @JsonKey(name: 'project_id')
  final String projectId;

  @JsonKey(name: 'auth_uri')
  final String authUri;

  @JsonKey(name: 'token_uri')
  final String tokenUri;

  @JsonKey(name: 'auth_provider_x509_cert_url')
  final String authProviderX509CertUrl;

  @JsonKey(name: 'client_secret')
  final String clientSecret;

  @JsonKey(name: 'redirect_uris')
  final List<String> redirectUris;

  ClientSecretInstalled(
      this.clientId,
      this.projectId,
      this.authUri,
      this.tokenUri,
      this.authProviderX509CertUrl,
      this.clientSecret,
      this.redirectUris);

  factory ClientSecretInstalled.fromJson(Map<String, dynamic> json) =>
      _$ClientSecretInstalledFromJson(json);

  Map<String, dynamic> toJson() => _$ClientSecretInstalledToJson(this);
}
