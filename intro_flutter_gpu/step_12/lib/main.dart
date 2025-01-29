// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_scene/scene.dart' as scn;
import 'package:vector_math/vector_math.dart' as vm;

void main() {
  runApp(
    MainApp(staticResourcesInitialized: scn.Scene.initializeStaticResources()),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key, required this.staticResourcesInitialized});

  final Future<void> staticResourcesInitialized;

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  final scene = scn.Scene();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 30),
      vsync: this,
    )..repeat();

    _animation = Tween<double>(begin: 0, end: 4 * math.pi).animate(_controller);

    // Load and add the 3D model
    scn.Node.fromAsset('build/models/building-port.model').then((model) {
      model.name = 'Port Building';
      scene.add(model);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hexagon Explorer',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox.expand(
          child: FutureBuilder(
            future: widget.staticResourcesInitialized,
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const Center(child: CircularProgressIndicator());
              }
              return AnimatedBuilder(
                builder: (context, child) {
                  return CustomPaint(
                    painter: ScenePainter(
                      scene: scene,
                      camera: scn.PerspectiveCamera(
                        position: vm.Vector3(
                          math.sin(_animation.value) * 3,
                          2,
                          math.cos(_animation.value) * 3,
                        ),
                        target: vm.Vector3(0, 0, 0),
                      ),
                    ),
                  );
                },
                animation: _animation,
              );
            },
          ),
        ),
      ),
    );
  }
}

class ScenePainter extends CustomPainter {
  ScenePainter({required this.scene, required this.camera});
  final scn.Scene scene;
  final scn.Camera camera;

  @override
  void paint(Canvas canvas, Size size) {
    scene.render(camera, canvas, viewport: Offset.zero & size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
