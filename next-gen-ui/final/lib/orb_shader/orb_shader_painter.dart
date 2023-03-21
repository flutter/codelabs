// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as v64;

import 'orb_shader_config.dart';

class OrbShaderPainter extends CustomPainter {
  OrbShaderPainter(
    this.shader, {
    required this.config,
    required this.time,
    required this.mousePos,
    required this.energy,
  });
  final FragmentShader shader;
  final OrbShaderConfig config;
  final double time;
  final Offset mousePos;
  final double energy;

  @override
  void paint(Canvas canvas, Size size) {
    double fov = v64.mix(pi / 4.3, pi / 2.0, config.zoom.clamp(0.0, 1.0));

    v64.Vector3 colorToVector3(Color c) =>
        v64.Vector3(
          c.red.toDouble(),
          c.green.toDouble(),
          c.blue.toDouble(),
        ) /
        255.0;

    v64.Vector3 lightLumP = colorToVector3(config.lightColor).normalized() *
        max(0.0, config.lightBrightness);
    v64.Vector3 albedo = colorToVector3(config.materialColor);

    v64.Vector3 ambientLight = colorToVector3(config.ambientLightColor) *
        max(0.0, config.ambientLightBrightness);

    shader.setFloat(0, size.width);
    shader.setFloat(1, size.height);
    shader.setFloat(2, time);
    shader.setFloat(3, mousePos.dx);
    shader.setFloat(4, mousePos.dy);
    shader.setFloat(5, max(0.0, config.exposure));
    shader.setFloat(6, fov);
    shader.setFloat(7, config.roughness.clamp(0.0, 1.0));
    shader.setFloat(8, config.metalness.clamp(0.0, 1.0));
    shader.setFloat(9, config.lightOffsetX);
    shader.setFloat(10, config.lightOffsetY);
    shader.setFloat(11, config.lightOffsetZ);
    shader.setFloat(12, config.lightRadius);
    shader.setFloat(13, lightLumP.x);
    shader.setFloat(14, lightLumP.y);
    shader.setFloat(15, lightLumP.z);
    shader.setFloat(16, albedo.x);
    shader.setFloat(17, albedo.y);
    shader.setFloat(18, albedo.z);
    shader.setFloat(19, config.ior.clamp(0.0, 2.0));
    shader.setFloat(20, config.lightAttenuation.clamp(0.0, 1.0));
    shader.setFloat(21, ambientLight.x);
    shader.setFloat(22, ambientLight.y);
    shader.setFloat(23, ambientLight.z);
    shader.setFloat(24, config.ambientLightDepthFactor.clamp(0.0, 1.0));
    shader.setFloat(25, energy);

    canvas.drawPaint(Paint()..shader = shader);
  }

  @override
  bool shouldRepaint(OrbShaderPainter oldDelegate) => true;
}
