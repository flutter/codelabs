// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:particle_field/particle_field.dart';
import 'package:rnd/rnd.dart';

class ParticleOverlay extends StatelessWidget {
  const ParticleOverlay({super.key, required this.color, required this.energy});

  final Color color;
  final double energy;

  @override
  Widget build(BuildContext context) {
    return ParticleField(
      spriteSheet: SpriteSheet(
        image: const AssetImage('assets/images/particle-wave.png'),
      ),
      blendMode: BlendMode.dstIn,
      onTick: (controller, _, size) {
        List<Particle> particles = controller.particles;

        double a = rnd(pi * 2);
        double dist = rnd(1, 4) * 35 + 150 * energy;
        double vel = rnd(1, 2) * (1 + energy * 1.8);
        particles.add(Particle(
          lifespan: rnd(1, 2) * 20 + energy * 15,
          x: cos(a) * dist,
          y: sin(a) * dist,
          vx: cos(a) * vel,
          vy: sin(a) * vel,
          rotation: a,
          scale: rnd(1, 2) * 0.6 + energy * 0.5,
        ));

        for (int i = particles.length - 1; i >= 0; i--) {
          Particle p = particles[i];
          if (p.lifespan <= 0) {
            particles.removeAt(i);
            continue;
          }
          p.update(
            scale: p.scale * 1.025,
            vx: p.vx * 1.025,
            vy: p.vy * 1.025,
            color: color.withOpacity(p.lifespan * 0.001 + 0.01),
            lifespan: p.lifespan - 1,
          );
        }
      },
    );
  }
}
