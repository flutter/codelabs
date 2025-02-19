// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_gpu/gpu.dart' as gpu;
import 'package:vector_math/vector_math.dart' as vm;

import 'shaders.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 30),
      vsync: this,
    )..repeat();

    _animation = Tween<double>(begin: 0, end: 4 * math.pi).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter GPU Triangle Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox.expand(
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return CustomPaint(
                painter: TrianglePainter(angle: _animation.value),
              );
            },
          ),
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  const TrianglePainter({required this.angle});
  final double angle;

  @override
  void paint(Canvas canvas, Size size) {
    final texture = gpu.gpuContext.createTexture(
      gpu.StorageMode.devicePrivate,
      size.width.ceil(),
      size.height.ceil(),
    );

    final renderTarget = gpu.RenderTarget.singleColor(
      gpu.ColorAttachment(texture: texture),
    );

    final commandBuffer = gpu.gpuContext.createCommandBuffer();
    final renderPass = commandBuffer.createRenderPass(renderTarget);

    final vert = shaderLibrary['SimpleVertex'];
    if (vert == null) {
      throw Exception('Failed to load SimpleVertex vertex shader');
    }

    final frag = shaderLibrary['SimpleFragment'];
    if (frag == null) {
      throw Exception('Failed to load SimpleFragment fragment shader');
    }

    final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);

    const floatsPerVertex = 6;
    final vertices = cubeVertices;

    final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
      ByteData.sublistView(vertices),
    );

    // Create model matrix with multiple rotations
    final model =
        vm.Matrix4.identity()
          ..rotateY(angle)
          ..rotateX(angle / 2);

    // Move camera back a bit more for better view
    final view = vm.Matrix4.translation(vm.Vector3(0.0, 0.0, -2.5));

    final projection = vm.makePerspectiveMatrix(
      vm.radians(45),
      size.aspectRatio,
      0.1,
      100.0,
    );

    final vertUniforms = [model, view, projection];

    final vertUniformsDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
      ByteData.sublistView(
        Float32List.fromList(vertUniforms.expand((m) => m.storage).toList()),
      ),
    );

    renderPass.bindPipeline(pipeline);

    renderPass.setCullMode(gpu.CullMode.backFace);

    final verticesView = gpu.BufferView(
      verticesDeviceBuffer,
      offsetInBytes: 0,
      lengthInBytes: verticesDeviceBuffer.sizeInBytes,
    );
    renderPass.bindVertexBuffer(
      verticesView,
      vertices.length ~/ floatsPerVertex,
    );

    final vertUniformsView = gpu.BufferView(
      vertUniformsDeviceBuffer,
      offsetInBytes: 0,
      lengthInBytes: vertUniformsDeviceBuffer.sizeInBytes,
    );

    renderPass.bindUniform(vert.getUniformSlot('VertInfo'), vertUniformsView);

    renderPass.draw();

    commandBuffer.submit();
    final image = texture.asImage();
    canvas.drawImage(image, Offset.zero, Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  static const List<List<double>> vertices = [
    // Vertex format: [x, y, z, u, v, w]

    // Front face of cube
    [-0.5, -0.5, 0.5, 0.0, 0.0, 1.0],
    [0.5, -0.5, 0.5, 1.0, 0.0, 1.0],
    [0.5, 0.5, 0.5, 1.0, 1.0, 1.0],
    [-0.5, 0.5, 0.5, 0.0, 1.0, 1.0],

    // Back face of cube
    [-0.5, -0.5, -0.5, 0.0, 0.0, 0.0],
    [0.5, -0.5, -0.5, 1.0, 0.0, 0.0],
    [0.5, 0.5, -0.5, 1.0, 1.0, 0.0],
    [-0.5, 0.5, -0.5, 0.0, 1.0, 0.0],
  ];

  // Define indices for triangles (counter-clockwise winding)
  static const List<int> indices = [
    // Front face
    0, 2, 1, 0, 3, 2,
    // Back face
    4, 5, 6, 4, 6, 7,
    // Left face
    0, 4, 7, 0, 7, 3,
    // Right face
    1, 2, 6, 1, 6, 5,
    // Bottom face
    0, 1, 5, 0, 5, 4,
    // Top face
    3, 7, 6, 3, 6, 2,
  ];

  /// Flattened vertex data ready for insertion in graphics buffer.
  /// The vertex format is `[x, y, z, u, v, w]`.
  static final Float32List cubeVertices = Float32List.fromList([
    for (final index in indices) ...vertices[index],
  ]);
}
