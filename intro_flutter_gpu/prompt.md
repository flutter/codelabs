I'd like to create a codelab for introducing medium level Flutter developers to the new
Flutter GPU APIs exposed in Flutter's Impeller on Android, iOS, Windows, macOS and Linux.

The codelab is called "Introduction to Flutter GPU". The codelab is made up of a series of steps.

This codelab requires Flutter version 3.28, which comes with Dart 3.7.

## Step 1. Single Green Triange

Create the empty Flutter application for the supported platforms

```console
$ create --empty intro_flutter_gpu --platforms android,ios,macos,windows
```

Add `flutter_gpu` dependency from the Flutter SDK.

```console
$ flutter pub add flutter_gpu --sdk=flutter 
```

Add dependencies from `pub.dev`

```console
$ flutter pub add flutter_gpu_shaders native_assets_cli vector_math
```

The `native_assets_cli` pipeline, defined below, converts the OpenGL Shader 
Language (GLSL) into the native shaders for the platform and writes them out 
to `build/shaderbundles`. For now, these need to be explicitly added to the 
`pubspec.yaml` so that the native shader bundle is included into the built
application.

Patch `pubspec.yaml` as follows:

```patch
--- b/intro_flutter_gpu/step_01/pubspec.yaml
+++ a/intro_flutter_gpu/step_01/pubspec.yaml
@@ -23,3 +23,6 @@ dev_dependencies:
  
  flutter:
    uses-material-design: true
+
+  assets:
+    - build/shaderbundles/
```

The resulting `pubspec.yaml` file will be as follows.

```yaml
name: intro_flutter_gpu
description: "A new Flutter project."
publish_to: 'none'
version: 0.1.0

environment:
  sdk: ^3.7.0

dependencies:
  flutter:
    sdk: flutter
  flutter_gpu:
    sdk: flutter
  flutter_gpu_shaders: ^0.2.0
  native_assets_cli: ^0.9.0
  vector_math: ^2.1.4

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0

flutter:
  uses-material-design: true

  assets:
    - build/shaderbundles/
```

The shader files are as follows. The vertex shader is called `shaders/simple.vert`

```glsl
#version 460 core

in vec2 position;

void main() {
  gl_Position = vec4(position, 0.0, 1.0);
}
```

Note, the `#version 460 core` is not required by Flutter GPU. It is included as 
an aid to text editors and IDEs to help developers use the correct subset of 
OpenGL Shader Language, the forward compatible OpenGL 4.6 subset.

The fragment shader is called `shaders/simple.frag`

```glsl
#version 460 core

out vec4 frag_color;

void main() {
  frag_color = vec4(0, 1, 0, 1);
}
```

The shader bundle is compiled using the following configuration file to define
which shader files are included. This file is called `my_first_triangle.shaderbundle.json`

```json
{
    "SimpleVertex": {
        "type": "vertex",
        "file": "shaders/simple.vert"
    },
    "SimpleFragment": {
        "type": "fragment",
        "file": "shaders/simple.frag"
    }
}
```

The conversion of the OpenGL Shader Language files into the native shader bundle is
handled by the `hook/build.dart` file

```dart
import 'package:flutter_gpu_shaders/build.dart';
import 'package:native_assets_cli/native_assets_cli.dart';

void main(List<String> args) async {
  await build(args, (config, output) async {
    await buildShaderBundleJson(
      buildConfig: config,
      buildOutput: output,
      manifestFileName: 'my_first_triangle.shaderbundle.json',
    );
  });
}
```

The dart code to load the shader bundle at run time. This file is called `lib/shaders.dart`

```dart
import 'package:flutter_gpu/gpu.dart' as gpu;

const String _kShaderBundlePath =
    'build/shaderbundles/my_first_triangle.shaderbundle';

gpu.ShaderLibrary? _shaderLibrary;

gpu.ShaderLibrary get shaderLibrary {
  _shaderLibrary ??= gpu.ShaderLibrary.fromAsset(_kShaderBundlePath);

  try {
    return _shaderLibrary!;
  } catch (e) {
    throw Exception('Failed to load shader bundle! ($_kShaderBundlePath)');
  }
}
```

The main application is as follows. This file is called `lib/main.dart`

```dart
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_gpu/gpu.dart' as gpu;

import 'shaders.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter GPU Triangle Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox.expand(child: CustomPaint(painter: TrianglePainter())),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  const TrianglePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final texture = gpu.gpuContext.createTexture(
      gpu.StorageMode.devicePrivate,
      size.width.ceil(),
      size.height.ceil(),
    );
    if (texture == null) {
      throw Exception('Failed to create texture');
    }

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

    const floatsPerVertex = 2;
    final vertices = Float32List.fromList([
      -0.5, -0.5, // First vertex
      0.5, -0.5, // Second vertex
      0.0, 0.5, // Third vertex
    ]);

    final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
      ByteData.sublistView(vertices),
    );
    if (verticesDeviceBuffer == null) {
      throw Exception('Failed to create vertices device buffer');
    }

    renderPass.bindPipeline(pipeline);

    final verticesView = gpu.BufferView(
      verticesDeviceBuffer,
      offsetInBytes: 0,
      lengthInBytes: verticesDeviceBuffer.sizeInBytes,
    );
    renderPass.bindVertexBuffer(
      verticesView,
      vertices.length ~/ floatsPerVertex,
    );

    renderPass.draw();

    commandBuffer.submit();
    final image = texture.asImage();
    canvas.drawImage(image, Offset.zero, Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
```

Note, the `renderPass.draw()` call does not force the drawing of pixels to the screen, it only
adds the draw command to the `commandBuffer`. The `commandBuffer.submit()` call flushes the 
command buffer to the GPU, which results in pixels being drawn to the text. The texture is 
then converted into an image, and drawn to the screen with the `canvas.drawImage()` call.

## Step 2. Colored triange.

Modify `lib/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_02/lib/main.dart
+++ a/intro_flutter_gpu/step_02/lib/main.dart
@@ -61,11 +61,12 @@ class TrianglePainter extends CustomPainter {
  
      final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);
  
-    const floatsPerVertex = 2;
+    const floatsPerVertex = 5;
      final vertices = Float32List.fromList([
-      -0.5, -0.5, // First vertex
-      0.5, -0.5, // Second vertex
-      0.0, 0.5, // Third vertex
+      // Format: x, y, r, g, b,
+      -0.5, -0.5, 1.0, 0.0, 0.0,
+      0.5, -0.5, 0.0, 1.0, 0.0,
+      0.0, 0.5, 0.0, 0.0, 1.0,
      ]);
  
      final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
```

Update `shaders/simple.vert` as follows

```diff
--- b/intro_flutter_gpu/step_02/shaders/simple.vert
+++ a/intro_flutter_gpu/step_02/shaders/simple.vert
@@ -5,7 +5,11 @@
  #version 460 core
  
  in vec2 position;
+in vec3 color;
+
+out vec3 vertex_color;
  
  void main() {
    gl_Position = vec4(position, 0.0, 1.0);
-}
+  vertex_color = color;
+}
```


Update `shaders/simple.frag` as follows

```diff
--- b/intro_flutter_gpu/step_02/shaders/simple.frag
+++ a/intro_flutter_gpu/step_02/shaders/simple.frag
@@ -4,8 +4,9 @@
  
  #version 460 core
  
+in vec3 vertex_color;
  out vec4 frag_color;
  
  void main() {
-  frag_color = vec4(0, 1, 0, 1);
+  frag_color = vec4(vertex_color, 1);
  }
```

## Step 3. Two triangles

Update `lib/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_03/lib/main.dart
+++ a/intro_flutter_gpu/step_03/lib/main.dart
@@ -64,9 +64,15 @@ class TrianglePainter extends CustomPainter {
      const floatsPerVertex = 5;
      final vertices = Float32List.fromList([
        // Format: x, y, r, g, b,
-      -0.5, -0.5, 1.0, 0.0, 0.0,
-      0.5, -0.5, 0.0, 1.0, 0.0,
-      0.0, 0.5, 0.0, 0.0, 1.0,
+
+      // Traingle #1
+      -0.5, -0.5, 1.0, 0.0, 0.0, // bottom left
+      0.5, -0.5, 0.0, 1.0, 0.0, // bottom right
+      -0.5, 0.5, 0.0, 0.0, 1.0, // top left
+      // Traingle #2
+      0.5, -0.5, 0.0, 1.0, 0.0, // bottom right
+      0.5, 0.5, 1.0, 1.0, 0.0, // top right
+      -0.5, 0.5, 0.0, 0.0, 1.0, // top left
      ]);
  
      final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
```

## Step 4. Two triangles with broken color interpolation

Update `lib/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_04/lib/main.dart
+++ a/intro_flutter_gpu/step_04/lib/main.dart
@@ -66,13 +66,13 @@ class TrianglePainter extends CustomPainter {
        // Format: x, y, r, g, b,
  
        // Traingle #1
-      -0.5, -0.5, 1.0, 0.0, 0.0, // bottom left
-      0.5, -0.5, 0.0, 1.0, 0.0, // bottom right
-      -0.5, 0.5, 0.0, 0.0, 1.0, // top left
+      -0.5, -0.5, 0.0, 0.0, 1.0, // bottom left
+      0.5, -0.5, 1.0, 1.0, 0.0, // bottom right
+      -0.5, 0.5, 1.0, 0.0, 0.0, // top left
        // Traingle #2
-      0.5, -0.5, 0.0, 1.0, 0.0, // bottom right
-      0.5, 0.5, 1.0, 1.0, 0.0, // top right
-      -0.5, 0.5, 0.0, 0.0, 1.0, // top left
+      0.5, -0.5, 1.0, 1.0, 0.0, // bottom right
+      0.5, 0.5, 0.0, 1.0, 0.0, // top right
+      -0.5, 0.5, 1.0, 0.0, 0.0, // top left
      ]);
  
      final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
```

## Step 5. Introduce UV to fix color interpolation

Update `lib/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_05/lib/main.dart
+++ a/intro_flutter_gpu/step_05/lib/main.dart
@@ -61,18 +61,18 @@ class TrianglePainter extends CustomPainter {
  
      final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);
  
-    const floatsPerVertex = 5;
+    const floatsPerVertex = 4;
      final vertices = Float32List.fromList([
-      // Format: x, y, r, g, b,
+      // Format: x, y, u, v,
  
        // Traingle #1
-      -0.5, -0.5, 0.0, 0.0, 1.0, // bottom left
-      0.5, -0.5, 1.0, 1.0, 0.0, // bottom right
-      -0.5, 0.5, 1.0, 0.0, 0.0, // top left
+      -0.5, -0.5, 0.0, 0.0, // bottom left
+      0.5, -0.5, 1.0, 0.0, // bottom right
+      -0.5, 0.5, 0.0, 1.0, // top left
        // Traingle #2
-      0.5, -0.5, 1.0, 1.0, 0.0, // bottom right
-      0.5, 0.5, 0.0, 1.0, 0.0, // top right
-      -0.5, 0.5, 1.0, 0.0, 0.0, // top left
+      0.5, -0.5, 1.0, 0.0, // bottom right
+      0.5, 0.5, 1.0, 1.0, // top right
+      -0.5, 0.5, 0.0, 1.0, // top left
      ]);
  
      final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
```

Modify `shaders/simple.vert` as follows

```diff
--- b/intro_flutter_gpu/step_05/shaders/simple.vert
+++ a/intro_flutter_gpu/step_05/shaders/simple.vert
@@ -5,11 +5,11 @@
  #version 460 core
  
  in vec2 position;
-in vec3 color;
+in vec2 uv;
  
-out vec3 vertex_color;
+out vec2 vertex_uv;
  
  void main() {
    gl_Position = vec4(position, 0.0, 1.0);
-  vertex_color = color;
-}
+  vertex_uv = uv;
+}
```

Modify `shaders/simple.frag` as follows

```diff
--- b/intro_flutter_gpu/step_05/shaders/simple.frag
+++ a/intro_flutter_gpu/step_05/shaders/simple.frag
@@ -4,9 +4,16 @@
  
  #version 460 core
  
-in vec3 vertex_color;
+in vec2 vertex_uv;
  out vec4 frag_color;
  
+const vec4 top_left_color = vec4(1, 0, 0, 1);
+const vec4 top_right_color = vec4(0, 1, 0, 1);
+const vec4 bottom_left_color = vec4(0, 0, 1, 1);
+const vec4 bottom_right_color = vec4(1, 1, 0, 1);
+
  void main() {
-  frag_color = vec4(vertex_color, 1);
+  frag_color =
+      mix(mix(bottom_left_color, bottom_right_color, vertex_uv.x),
+          mix(top_left_color, top_right_color, vertex_uv.x), vertex_uv.y);
  }
```

## Step 6. Rendering a Madelbrot

Update `lib/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_06/lib/main.dart
+++ a/intro_flutter_gpu/step_06/lib/main.dart
@@ -66,13 +66,13 @@ class TrianglePainter extends CustomPainter {
        // Format: x, y, u, v,
  
        // Traingle #1
-      -0.5, -0.5, 0.0, 0.0, // bottom left
-      0.5, -0.5, 1.0, 0.0, // bottom right
-      -0.5, 0.5, 0.0, 1.0, // top left
+      -0.8, -0.8, -1.0, -1.0, // bottom left
+      0.8, -0.8, 1.0, -1.0, // bottom right
+      -0.8, 0.8, -1.0, 1.0, // top left
        // Traingle #2
-      0.5, -0.5, 1.0, 0.0, // bottom right
-      0.5, 0.5, 1.0, 1.0, // top right
-      -0.5, 0.5, 0.0, 1.0, // top left
+      0.8, -0.8, 1.0, -1.0, // bottom right
+      0.8, 0.8, 1.0, 1.0, // top right
+      -0.8, 0.8, -1.0, 1.0, // top left
      ]);
  
      final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
```

Modify `shaders/simple.frag` as follows

```diff
--- b/intro_flutter_gpu/step_06/shaders/simple.frag
+++ a/intro_flutter_gpu/step_06/shaders/simple.frag
@@ -7,13 +7,27 @@
  in vec2 vertex_uv;
  out vec4 frag_color;
  
-const vec4 top_left_color = vec4(1, 0, 0, 1);
-const vec4 top_right_color = vec4(0, 1, 0, 1);
-const vec4 bottom_left_color = vec4(0, 0, 1, 1);
-const vec4 bottom_right_color = vec4(1, 1, 0, 1);
+// Adapted from https://www.youtube.com/shorts/h5PuIm6fRr8
+float mandelbrot(vec2 uv) {
+  const float MAX_ITER = 128;
+  vec2 c =  1.2 * uv - vec2(0.7, 0.0);
+  vec2 z = vec2(0.0);
+
+  for (float iter = 0.0; iter < MAX_ITER; iter++) {
+    z = vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y) + c;
+    if (length(z) > 4.0) {
+      return iter / MAX_ITER;
+    }
+  }
+
+  return 0.0;
+}
+
  
  void main() {
-  frag_color =
-      mix(mix(bottom_left_color, bottom_right_color, vertex_uv.x),
-          mix(top_left_color, top_right_color, vertex_uv.x), vertex_uv.y);
+    float m = mandelbrot(vertex_uv);
+    vec3 col = vec3(m);
+    col = pow(col, vec3(0.4545, 0.3, 0.1));
+    frag_color = vec4(col, 1.0);
+
  }
```

## Step 7. Broken 3D animation

Update `lib/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_07/lib/main.dart
+++ a/intro_flutter_gpu/step_07/lib/main.dart
@@ -2,10 +2,12 @@
  // Use of this source code is governed by a BSD-style license that can be
  // found in the LICENSE file.
  
+import 'dart:math' as math;
  import 'dart:typed_data';
  
  import 'package:flutter/material.dart';
  import 'package:flutter_gpu/gpu.dart' as gpu;
+import 'package:vector_math/vector_math.dart' as vm;
  
  import 'shaders.dart';
  
@@ -13,23 +15,58 @@ void main() {
    runApp(const MainApp());
  }
  
-class MainApp extends StatelessWidget {
+class MainApp extends StatefulWidget {
    const MainApp({super.key});
  
+  @override
+  State<MainApp> createState() => _MainAppState();
+}
+
+class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
+  late AnimationController _controller;
+  late Animation<double> _animation;
+
+  @override
+  void initState() {
+    super.initState();
+    _controller = AnimationController(
+      duration: const Duration(seconds: 15),
+      vsync: this,
+    )..repeat();
+
+    _animation = Tween<double>(begin: 0, end: 2 * math.pi).animate(_controller);
+  }
+
+  @override
+  void dispose() {
+    _controller.dispose();
+    super.dispose();
+  }
+
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter GPU Triangle Demo',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
-        body: SizedBox.expand(child: CustomPaint(painter: TrianglePainter())),
+        body: SizedBox.expand(
+          child: AnimatedBuilder(
+            builder: (context, child) {
+              return CustomPaint(
+                painter: TrianglePainter(angle: _animation.value),
+              );
+            },
+            animation: _animation,
+          ),
+        ),
        ),
      );
    }
  }
  
  class TrianglePainter extends CustomPainter {
-  const TrianglePainter();
+  const TrianglePainter({required this.angle});
+  final double angle;
  
    @override
    void paint(Canvas canvas, Size size) {
@@ -82,6 +119,20 @@ class TrianglePainter extends CustomPainter {
        throw Exception('Failed to create vertices device buffer');
      }
  
+    final model = vm.Matrix4.rotationY(angle);
+
+    final vertUniforms = [model];
+
+    final vertUniformsDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
+      ByteData.sublistView(
+        Float32List.fromList(vertUniforms.expand((m) => m.storage).toList()),
+      ),
+    );
+
+    if (vertUniformsDeviceBuffer == null) {
+      throw Exception('Failed to create vert uniforms device buffer');
+    }
+
      renderPass.bindPipeline(pipeline);
  
      final verticesView = gpu.BufferView(
@@ -94,6 +145,14 @@ class TrianglePainter extends CustomPainter {
        vertices.length ~/ floatsPerVertex,
      );
  
+    final vertUniformsView = gpu.BufferView(
+      vertUniformsDeviceBuffer,
+      offsetInBytes: 0,
+      lengthInBytes: vertUniformsDeviceBuffer.sizeInBytes,
+    );
+
+    renderPass.bindUniform(vert.getUniformSlot('VertInfo'), vertUniformsView);
+
      renderPass.draw();
  
      commandBuffer.submit();
```

Modify `shaders/simple.vert` as follows

```diff
--- b/intro_flutter_gpu/step_07/shaders/simple.vert
+++ a/intro_flutter_gpu/step_07/shaders/simple.vert
@@ -9,7 +9,11 @@ in vec2 uv;
  
  out vec2 vertex_uv;
  
+uniform VertInfo {
+  mat4 model;
+};
+
  void main() {
-  gl_Position = vec4(position, 0.0, 1.0);
+  gl_Position = model * vec4(position, 0.0, 1.0);
    vertex_uv = uv;
  }
```

## Step 8. Fixing 3D animation with Model, View and Projection matrices

Update `lib/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_08/lib/main.dart
+++ a/intro_flutter_gpu/step_08/lib/main.dart
@@ -120,8 +120,15 @@ class TrianglePainter extends CustomPainter {
      }
  
      final model = vm.Matrix4.rotationY(angle);
+    final view = vm.Matrix4.translation(vm.Vector3(0.0, 0.0, -2.0));
+    final projection = vm.makePerspectiveMatrix(
+      vm.radians(45),
+      size.aspectRatio,
+      0.1,
+      100,
+    );
  
-    final vertUniforms = [model];
+    final vertUniforms = [model, view, projection];
  
      final vertUniformsDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
        ByteData.sublistView(
```

Modify `shaders/simple.vert` as follows

```diff
--- b/intro_flutter_gpu/step_08/shaders/simple.vert
+++ a/intro_flutter_gpu/step_08/shaders/simple.vert
@@ -11,9 +11,11 @@ out vec2 vertex_uv;
  
  uniform VertInfo {
    mat4 model;
+  mat4 view;
+  mat4 projection;
  };
  
  void main() {
-  gl_Position = model * vec4(position, 0.0, 1.0);
+  gl_Position = projection * view * model * vec4(position, 0.0, 1.0);
    vertex_uv = uv;
  }
```

## Step 9. Rendering a rotating cube

Update `lib/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_09/lib/main.dart
+++ a/intro_flutter_gpu/step_09/lib/main.dart
@@ -98,18 +98,57 @@ class TrianglePainter extends CustomPainter {
  
      final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);
  
-    const floatsPerVertex = 4;
+    const floatsPerVertex = 6;
      final vertices = Float32List.fromList([
-      // Format: x, y, u, v,
-
-      // Traingle #1
-      -0.8, -0.8, -1.0, -1.0, // bottom left
-      0.8, -0.8, 1.0, -1.0, // bottom right
-      -0.8, 0.8, -1.0, 1.0, // top left
-      // Traingle #2
-      0.8, -0.8, 1.0, -1.0, // bottom right
-      0.8, 0.8, 1.0, 1.0, // top right
-      -0.8, 0.8, -1.0, 1.0, // top left
+      // layout: x, y, z, r, g, b
+
+      // Back Face
+      -0.5, -0.5, -0.5, 1.0, 0.0, 0.0,
+      0.5, -0.5, -0.5, 0.0, 1.0, 0.0,
+      0.5, 0.5, -0.5, 0.0, 0.0, 1.0,
+      0.5, 0.5, -0.5, 0.0, 0.0, 1.0,
+      -0.5, 0.5, -0.5, 1.0, 1.0, 0.0,
+      -0.5, -0.5, -0.5, 1.0, 0.0, 0.0,
+
+      // Front Face
+      -0.5, -0.5, 0.5, 1.0, 0.0, 0.0,
+      0.5, 0.5, 0.5, 0.0, 0.0, 1.0,
+      0.5, -0.5, 0.5, 0.0, 1.0, 0.0,
+      0.5, 0.5, 0.5, 0.0, 0.0, 1.0,
+      -0.5, -0.5, 0.5, 1.0, 0.0, 0.0,
+      -0.5, 0.5, 0.5, 1.0, 1.0, 0.0,
+
+      // Left Face
+      -0.5, 0.5, 0.5, 1.0, 0.0, 0.0,
+      -0.5, -0.5, -0.5, 0.0, 0.0, 1.0,
+      -0.5, 0.5, -0.5, 0.0, 1.0, 0.0,
+      -0.5, -0.5, -0.5, 0.0, 0.0, 1.0,
+      -0.5, 0.5, 0.5, 1.0, 0.0, 0.0,
+      -0.5, -0.5, 0.5, 1.0, 1.0, 0.0,
+
+      // Right Face
+      0.5, 0.5, 0.5, 1.0, 0.0, 0.0,
+      0.5, 0.5, -0.5, 0.0, 1.0, 0.0,
+      0.5, -0.5, -0.5, 0.0, 0.0, 1.0,
+      0.5, -0.5, -0.5, 0.0, 0.0, 1.0,
+      0.5, -0.5, 0.5, 1.0, 1.0, 0.0,
+      0.5, 0.5, 0.5, 1.0, 0.0, 0.0,
+
+      // Bottom Face
+      0.5, -0.5, -0.5, 0.0, 1.0, 0.0,
+      -0.5, -0.5, -0.5, 1.0, 0.0, 0.0,
+      0.5, -0.5, 0.5, 0.0, 0.0, 1.0,
+      -0.5, -0.5, 0.5, 1.0, 1.0, 0.0,
+      0.5, -0.5, 0.5, 0.0, 0.0, 1.0,
+      -0.5, -0.5, -0.5, 1.0, 0.0, 0.0,
+
+      // Top Face
+      -0.5, 0.5, -0.5, 1.0, 0.0, 0.0,
+      0.5, 0.5, -0.5, 0.0, 1.0, 0.0,
+      0.5, 0.5, 0.5, 0.0, 0.0, 1.0,
+      0.5, 0.5, 0.5, 0.0, 0.0, 1.0,
+      -0.5, 0.5, 0.5, 1.0, 1.0, 0.0,
+      -0.5, 0.5, -0.5, 1.0, 0.0, 0.0,
      ]);
  
      final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
```

Update `shaders/simple.frag` as follows

```diff
--- b/intro_flutter_gpu/step_09/shaders/simple.frag
+++ a/intro_flutter_gpu/step_09/shaders/simple.frag
@@ -4,30 +4,9 @@
  
  #version 460 core
  
-in vec2 vertex_uv;
+in vec3 vertex_color;
  out vec4 frag_color;
  
-// Adapted from https://www.youtube.com/shorts/h5PuIm6fRr8
-float mandelbrot(vec2 uv) {
-  const float MAX_ITER = 128;
-  vec2 c =  1.2 * uv - vec2(0.7, 0.0);
-  vec2 z = vec2(0.0);
-
-  for (float iter = 0.0; iter < MAX_ITER; iter++) {
-    z = vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y) + c;
-    if (length(z) > 4.0) {
-      return iter / MAX_ITER;
-    }
-  }
-
-  return 0.0;
-}
-
-
-void main() {
-    float m = mandelbrot(vertex_uv);
-    vec3 col = vec3(m);
-    col = pow(col, vec3(0.4545, 0.3, 0.1));
-    frag_color = vec4(col, 1.0);
-
+void main() { 
+  frag_color = vec4(vertex_color, 1.0); 
  }
```

Update `shaders/simple.vert` as follows

```diff
--- b/intro_flutter_gpu/step_09/shaders/simple.vert
+++ a/intro_flutter_gpu/step_09/shaders/simple.vert
@@ -4,10 +4,10 @@
  
  #version 460 core
  
-in vec2 position;
-in vec2 uv;
+in vec3 position;
+in vec3 color;
  
-out vec2 vertex_uv;
+out vec3 vertex_color;
  
  uniform VertInfo {
    mat4 model;
@@ -16,6 +16,6 @@ uniform VertInfo {
  };
  
  void main() {
-  gl_Position = projection * view * model * vec4(position, 0.0, 1.0);
-  vertex_uv = uv;
+  gl_Position = projection * view * model * vec4(position, 1.0);
+  vertex_color = color;
  }
```

## Step 10. Adding back face culling

Modify `lib/main.dart` as follows


```diff
--- b/intro_flutter_gpu/step_10/lib/main.dart
+++ a/intro_flutter_gpu/step_10/lib/main.dart
@@ -181,6 +181,8 @@ class TrianglePainter extends CustomPainter {
  
      renderPass.bindPipeline(pipeline);
  
+    renderPass.setCullMode(gpu.CullMode.backFace);
+
      final verticesView = gpu.BufferView(
        verticesDeviceBuffer,
        offsetInBytes: 0,
```

## Step 11. Rotating in two dimensions

Update `liob/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_11/lib/main.dart
+++ a/intro_flutter_gpu/step_11/lib/main.dart
@@ -30,11 +30,11 @@ class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
    void initState() {
      super.initState();
      _controller = AnimationController(
-      duration: const Duration(seconds: 15),
+      duration: const Duration(seconds: 30),
        vsync: this,
      )..repeat();
  
-    _animation = Tween<double>(begin: 0, end: 2 * math.pi).animate(_controller);
+    _animation = Tween<double>(begin: 0, end: 4 * math.pi).animate(_controller);
    }
  
    @override
@@ -158,8 +158,11 @@ class TrianglePainter extends CustomPainter {
        throw Exception('Failed to create vertices device buffer');
      }
  
-    final model = vm.Matrix4.rotationY(angle);
-    final view = vm.Matrix4.translation(vm.Vector3(0.0, 0.0, -2.0));
+    final model =
+        vm.Matrix4.identity()
+          ..rotateY(angle)
+          ..rotateX(angle / 2);
+    final view = vm.Matrix4.translation(vm.Vector3(0.0, 0.0, -2.5));
      final projection = vm.makePerspectiveMatrix(
        vm.radians(45),
        size.aspectRatio,
```

## Step 12. Use Flutter Scene

Drop `flutter_gpu` dependencies

```console
$ flutter pub remove flutter_gpu flutter_gpu_shaders
```

Add `flutter_scene` dependencies

```console
$ flutter pub add flutter_scene flutter_scene_importer
```

This will update `pubspec.yaml` as follows.

```yaml
name: intro_flutter_gpu
description: "A new Flutter project."
publish_to: 'none'
version: 0.1.0

environment:
  sdk: ^3.7.0-0

dependencies:
  flutter:
    sdk: flutter
  flutter_scene: ^0.7.0-0
  flutter_scene_importer: ^0.7.0-0
  native_assets_cli: ^0.9.0
  vector_math: ^2.1.4

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0

flutter:
  uses-material-design: true

  assets:
    - build/models/
```

Remove the `my_first_triangle.shaderbundle.json` file and shaders

```console
$ rm my_first_triangle.shaderbundle.json
$ rm lib/shaders.dart
$ rm shaders/simple.vert
$ rm shaders/simple.frag
```

Update `lib/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_12/pubspec.yaml
+++ a/intro_flutter_gpu/step_12/pubspec.yaml
@@ -24,4 +24,4 @@ flutter:
    uses-material-design: true
  
    assets:
-    - build/shaderbundles/
+    - build/models/
```

Add a 3D asset `assets/building-port.glb` from [kenney.nl/assets/hexagon-kit](https://kenney.nl/assets/hexagon-kit) in glTF format.

Update `hooks/build.dart` as follows

```diff
--- b/intro_flutter_gpu/step_12/hook/build.dart
+++ a/intro_flutter_gpu/step_12/hook/build.dart
@@ -2,15 +2,14 @@
  // Use of this source code is governed by a BSD-style license that can be
  // found in the LICENSE file.
  
-import 'package:flutter_gpu_shaders/build.dart';
+import 'package:flutter_scene_importer/build_hooks.dart';
  import 'package:native_assets_cli/native_assets_cli.dart';
  
-void main(List<String> args) async {
-  await build(args, (config, output) async {
-    await buildShaderBundleJson(
+void main(List<String> args) {
+  build(args, (config, output) async {
+    buildModels(
        buildConfig: config,
-      buildOutput: output,
-      manifestFileName: 'my_first_triangle.shaderbundle.json',
+      inputFilePaths: ['assets/building-port.glb'],
      );
    });
  }
```

Replace `lib/main.dart` with the following 

```dart
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
```

**1. Visuals and Assets:**

*   **Screenshots/GIFs:**
    *   Do not worry about screenshots, these will be added later.
    *   Screenshots will be taken manually, not programmatically.
*   **3D Asset for Step 12:**
    *   There is only one `building-port.glb` asset in the linked asset pack.
    *   The asset in question is covered by CC0 and is hosted on Github with the rest of the codelab code
    *   The user should download the linked asset pack and extract the glTF asset.

**2. Code Details and Implementation:**

*   **Error Handling Strategy:**
    *   No additional `try-catch` strategy needs to be added to this code. Productionising this code is not a concern of this codelab.

*   **Step 6: Mandelbrot Color Mapping:**
    *   The mandelbrot color mapping is currently sufficient to demonstrate computing in shaders.

*   **Step 7/8: Animation Smoothing:**
    *  No smoothing is required at this point

*   **Step 9: Cube Data Generation:**
    *   The cube data will stay as data, it won't be programmatically generated.

*   **Step 12: `flutter_scene` Usage:**
    *   The model is appropriately scaled and positioned for the rotating camera
    *   The model will not be lit
    *   The shader bundle and 3D assets are rebuilt automatically by the `hook/build.dart` script

**3. Codelab Platform and Format:**

*   The codelab code will be hosted at https://github.com/flutter/codelabs
*   The codelab should have a tone of informal conversational prose.
*   The level of detail should be appropriate for intermediate developers.
*   Assume the developers understand the basics of Flutter development.
*   Assume the developers are seeing 3D programming for the first time.

**4. Testing and Validation:**

*   The codelab code is tested under CI on Github.com
*   This code requires Flutter version 3.28 to have the required APIs exposed from `flutter_gpu`
*   The code for this codelab will be hosted on github.com/flutter/codelabs with each step's code broken out separately

**5. Content and Explanations:**

*   **Depth of Explanations:**
    *   Please introduce each of the following concepts:
        *   GLSL basics.
        *   Storage modes.
        *   Attribute interpolation.
        *   UV Mapping.
        *   Mandelbrot formula.
        *   Camera and perspective.
        *   Matrix operations and order.
        *   `flutter_scene` features and benefits.
*   **Diagram Creation:**
    *   No diagrams are required at this point


Notes
  - You do not need to run `dart run hook/build.dart` as this is automatically handled by the `native_assets_cli` infrastructure.
  - Do not mention triangle strips. Flutter GPU does not support them.

**Title:** Introduction to Flutter GPU

**Target Audience:** Intermediate Flutter developers with little to no experience in 3D graphics programming.

**Prerequisites:**

*   Flutter SDK version 3.28 or later (includes Dart 3.7).
*   Basic understanding of Flutter development (Widgets, layouts, state management).
*   Familiarity with command-line interface.

**Learning Objectives:**

*   Understand the basics of GPU programming in Flutter using Impeller.
*   Learn how to create and compile shader programs (GLSL).
*   Learn how to create and manage GPU resources like textures and buffers.
*   Understand vertex and fragment shaders and their roles.
*   Draw basic shapes (triangles) using Flutter GPU.
*   Implement attribute interpolation for smooth color transitions.
*   Learn about UV mapping to apply colors to triangles.
*   Compute a Mandelbrot set in a fragment shader.
*   Introduce basic 3D concepts like model, view, and projection matrices.
*   Animate 3D objects using matrix transformations.
*   Implement back-face culling for optimization.
*   Learn how to use `flutter_scene` to load and render 3D models from assets.

## Codelab Structure

**Step 1: Setting Up and Drawing Your First Green Triangle**

*   **Introduction:**
    *   Briefly introduce Flutter GPU and Impeller.
    *   Explain that this codelab will guide you through creating a simple application that renders graphics directly on the GPU.
*   **Project Setup:**
    *   Create an empty Flutter project using the command line:
        ```console
        $ flutter create --empty intro_flutter_gpu --platforms android,ios,macos,windows
        ```
    *   Add necessary dependencies: `flutter_gpu`, `flutter_gpu_shaders`, `native_assets_cli`, and `vector_math`.
        ```console
        $ flutter pub add flutter_gpu --sdk=flutter 
        $ flutter pub add flutter_gpu_shaders native_assets_cli vector_math
        ```
    *   Update `pubspec.yaml` to include the shader bundle assets.
*   **GLSL Basics:**
    *   Introduce GLSL (OpenGL Shading Language) briefly.
    *   Explain vertex and fragment shaders.
    *   Show the `shaders/simple.vert` (vertex shader) code:
        ```glsl
        #version 460 core

        in vec2 position;

        void main() {
          gl_Position = vec4(position, 0.0, 1.0);
        }
        ```
    *   Show the `shaders/simple.frag` (fragment shader) code:
        ```glsl
        #version 460 core

        out vec4 frag_color;

        void main() {
          frag_color = vec4(0, 1, 0, 1);
        }
        ```
*   **Shader Bundle:**
    *   Explain what a shader bundle is.
    *   Show the `my_first_triangle.shaderbundle.json` file that defines the shader bundle.
    *   Show `hook/build.dart` to define how to build the shader bundle.
*   **Loading Shaders:**
    *   Show `lib/shaders.dart` to illustrate how to load the shader bundle at runtime.
*   **Flutter GPU API:**
    *   Introduce the basic concepts of `gpu.gpuContext`, textures, `RenderTarget`, `CommandBuffer`, `RenderPass`, and `RenderPipeline`.
    *   Explain `StorageMode` and its importance.
    *   Show the `lib/main.dart` code, focusing on the `TrianglePainter` class.
    *   Explain how to create a `DeviceBuffer` to hold vertex data and how to copy data to the GPU.
    *   Explain how to bind the pipeline and vertex buffer.
    *   Explain the `renderPass.draw()` and `commandBuffer.submit()` calls and how they differ.
    *   Explain how to convert a `Texture` into an `Image` and draw it on the screen with `canvas.drawImage()`.
*   **Run the App:**
    *   Instruct the user to run the app and observe the single green triangle.

**Step 2: Adding Color to the Triangle**

*   **Introduction:**
    *   Explain how to add color to vertices and interpolate them across the triangle.
*   **Code Modifications:**
    *   Update `lib/main.dart` to include color data in the vertices and increase the `floatsPerVertex`.
    *   Modify `shaders/simple.vert` to accept color as input and pass it to the fragment shader using an `out` variable (introduce `vertex_color`).
    *   Modify `shaders/simple.frag` to use the interpolated `vertex_color` to set the `frag_color`.
*   **Run the App:**
    *   Show the triangle with a smooth color gradient.

**Step 3: Drawing Two Triangles**

*   **Introduction:**
    *   Expand the application to draw two adjacent triangles, forming a rectangle.
*   **Code Modifications:**
    *   Update `lib/main.dart` to include vertices for the second triangle.
*   **Run the App:**
    *   Show the two-triangle rectangle.

**Step 4: Fixing Color Interpolation (Part 1)**

*   **Introduction:**
    *   Demonstrate a problem with color interpolation when vertices are shared between triangles with different colors.
*   **Code Modifications:**
    *   Update `lib/main.dart` to demonstrate broken color interpolation across the two triangles.
*   **Run the App:**
    *   Observe the incorrect color blending.

**Step 5: Fixing Color Interpolation (Part 2) - Introducing UV Mapping**

*   **Introduction:**
    *   Explain UV mapping as a solution for defining how colors (or textures) are applied to surfaces.
*   **Code Modifications:**
    *   Update `lib/main.dart` to use UV coordinates instead of per-vertex colors. Change the `floatsPerVertex` and vertices data accordingly.
    *   Modify `shaders/simple.vert` to pass UV coordinates to the fragment shader (`vertex_uv`).
    *   Modify `shaders/simple.frag` to calculate the fragment color based on UV coordinates using `mix` and pre-defined colors.
*   **Run the App:**
    *   Show the correctly colored rectangle with proper interpolation.

**Step 6: Rendering a Mandelbrot Set**

*   **Introduction:**
    *   Introduce the Mandelbrot set and its computation.
    *   Explain how to implement the Mandelbrot formula in a fragment shader.
*   **Code Modifications:**
    *   Update `lib/main.dart` to adjust the coordinates so that the Mandelbrot is correctly positioned
    *   Modify `shaders/simple.frag` to implement the Mandelbrot calculation and color mapping.
*   **Run the App:**
    *   Display the rendered Mandelbrot set.

**Step 7: Broken 3D Animation**

*   **Introduction:**
    *   Introduce basic 3D animation by rotating the triangles in 3D space.
    *   Introduce the concept of a model matrix.
    *   Explain uniforms and how to pass data to the vertex shader.
*   **Code Modifications:**
    *   Update `lib/main.dart` to:
        *   Add `vector_math` for matrix operations.
        *   Create an `AnimationController` to drive the animation.
        *   Create a model matrix (rotation around the Y-axis) using `vm.Matrix4.rotationY(angle)`.
        *   Create a `DeviceBuffer` for uniforms.
        *   Bind the uniform buffer to the shader using `renderPass.bindUniform()`.
    *   Modify `shaders/simple.vert` to:
        *   Define a uniform block `VertInfo` containing the model matrix.
        *   Multiply the vertex position by the model matrix: `gl_Position = model * vec4(position, 0.0, 1.0);`
*   **Run the App:**
    *   Observe the animation, but note that it looks incorrect because we are only applying the model matrix.

**Step 8: Fixing 3D Animation with View and Projection Matrices**

*   **Introduction:**
    *   Explain the need for view and projection matrices to create a proper 3D perspective.
    *   Introduce the concepts of camera, view matrix, and projection matrix.
*   **Code Modifications:**
    *   Update `lib/main.dart` to:
        *   Create a view matrix using `vm.Matrix4.translation()`.
        *   Create a perspective projection matrix using `vm.makePerspectiveMatrix()`.
        *   Pass the view and projection matrices to the shader as uniforms.
    *   Modify `shaders/simple.vert` to:
        *   Include the view and projection matrices in the `VertInfo` uniform block.
        *   Multiply the vertex position by all three matrices in the correct order: `gl_Position = projection * view * model * vec4(position, 0.0, 1.0);`
*   **Run the App:**
    *   Observe the correctly animated 3D rotation.

**Step 9: Rendering a Rotating Cube**

*   **Introduction:**
    *   Replace the two triangles with a 3D cube.
*   **Code Modifications:**
    *   Update `lib/main.dart` to:
        *   Define the vertices for a cube (layout: x, y, z, r, g, b).
        *   Update `floatsPerVertex` accordingly
    *   Modify `shaders/simple.vert` to use `vec3` for position and color attributes.
    *   Modify `shaders/simple.frag` to use `vertex_color` for basic coloring.
*   **Run the App:**
    *   Show the rotating cube.

**Step 10: Adding Back-Face Culling**

*   **Introduction:**
    *   Explain back-face culling as an optimization technique.
*   **Code Modifications:**
    *   Update `lib/main.dart` to enable back-face culling using `renderPass.setCullMode(gpu.CullMode.backFace);`
*   **Run the App:**
    *   Observe the improved rendering efficiency (only front faces are drawn).

**Step 11: Rotating in Two Dimensions**

*   **Introduction:**
    *   Modify the animation to rotate the cube around both the X and Y axes.
*   **Code Modifications:**
    *   Update `lib/main.dart` to update the model matrix to rotate around both the X and Y axes.
*   **Run the App:**
    *   Show the cube rotating in a more complex way.

**Step 12: Using Flutter Scene to Load and Render a 3D Model**

*   **Introduction:**
    *   Introduce `flutter_scene` as a higher-level library for working with 3D scenes.
    *   Explain how to load a 3D model from a glTF asset.
*   **Project Updates:**
    *   Drop `flutter_gpu` dependencies: `flutter_gpu`, `flutter_gpu_shaders`.
    *   Add `flutter_scene` and `flutter_scene_importer` dependencies.
    *   Remove old shader-related files and `lib/shaders.dart`.
    *   Update `pubspec.yaml` to refer to the `build/models` folder instead of `build/shaderbundles`.
*   **Asset:**
    *   Instruct users to download the Kenney Hexagon Kit asset pack.
    *   Extract the `building-port.glb` asset.
*   **Build Hook:**
    *   Modify `hook/build.dart` to use `flutter_scene_importer` to process the glTF model.
*   **Code Modifications:**
    *   Update `lib/main.dart` to:
        *   Replace the cube rendering code with `flutter_scene` specific code
        *   Call `scn.Scene.initializeStaticResources()` at the top of `main()`
        *   Create a `scn.Scene` object.
        *   Load the 3D model using `scn.Node.fromAsset()`.
        *   Add the loaded model to the scene.
        *   Create a `PerspectiveCamera` and control its position using the animation.
        *   Use a `CustomPaint` widget with a `ScenePainter` to render the scene.
*   **Run the App:**
    *   Show the rotating 3D model loaded from the asset.

**Conclusion:**

*   Summarize what was learned in the codelab.
*   Encourage further exploration of Flutter GPU and `flutter_scene`.
*   Provide links to relevant resources (documentation, examples).


Here is the introductory page for the "Introduction to Flutter GPU" codelab, including the overview and prerequisites:

# Introduction to Flutter GPU

## Welcome

Welcome to the exciting world of GPU programming in Flutter! In this codelab, you'll embark on a journey to harness the power of the GPU to create stunning visuals and performant graphics directly within your Flutter applications.  We'll be using Flutter's Impeller rendering engine, which unlocks a new level of graphics capabilities on Android, iOS, Windows, macOS, and Linux.

This codelab is designed for **intermediate Flutter developers** who are comfortable with the basics of Flutter development but may be new to the realm of 3D graphics and GPU programming.  Don't worry if you've never worked with shaders or 3D models before – we'll guide you through each step, explaining the core concepts along the way.

## What You'll Learn

Throughout this codelab, you will:

*   Get hands-on experience with Flutter's new GPU APIs.
*   Dive into the fundamentals of GPU programming using the Impeller rendering engine.
*   Write your own vertex and fragment shaders using GLSL (OpenGL Shading Language).
*   Create and manage essential GPU resources, such as textures and buffers.
*   Draw basic shapes, starting with a simple triangle and progressing to a fully rendered 3D model.
*   Implement smooth color transitions using attribute interpolation.
*   Master UV mapping to apply colors (and textures) to surfaces.
*   Explore the fascinating world of fractals by generating a Mandelbrot set directly on the GPU.
*   Grasp fundamental 3D concepts, including model, view, and projection matrices.
*   Animate 3D objects using matrix transformations.
*   Optimize your rendering with techniques like back-face culling.
*   Transition to a higher-level 3D scene management with `flutter_scene` for efficient model loading and rendering.

By the end of this codelab, you'll have a solid foundation in Flutter GPU programming, enabling you to create visually rich and performant experiences in your Flutter applications.

## Overview of the Codelab

This codelab is structured as a series of progressive steps, each building upon the previous one. Here's a sneak peek at what you'll be creating:

1.  **Setting Up and Drawing Your First Green Triangle:** You'll start by setting up your Flutter project, adding the necessary dependencies, and writing your first GLSL shaders to render a simple green triangle.
2.  **Adding Color to the Triangle:**  Learn how to add color attributes to your vertices and see how the GPU smoothly interpolates them across the triangle's surface.
3.  **Drawing Two Triangles:** Expand your rendering to draw two adjacent triangles, forming a rectangle.
4.  **Fixing Color Interpolation (Part 1):**  Discover a common issue with color interpolation when vertices are shared between triangles and prepare for the solution.
5.  **Fixing Color Interpolation (Part 2) - Introducing UV Mapping:**  Solve the color interpolation problem using the powerful technique of UV mapping.
6.  **Rendering a Mandelbrot Set:**  Dive into the world of fractals and learn how to generate a visually stunning Mandelbrot set using a fragment shader.
7.  **Broken 3D Animation:**  Take your first steps into 3D by animating the rotation of your shape. You'll encounter some visual quirks that need fixing.
8.  **Fixing 3D Animation with View and Projection Matrices:**  Learn about view and projection matrices and how they create the illusion of 3D perspective, correcting the animation issues from the previous step.
9.  **Rendering a Rotating Cube:**  Replace your simple triangles with a fully rendered 3D cube.
10. **Adding Back-Face Culling:**  Optimize your rendering by implementing back-face culling, preventing unnecessary drawing of hidden surfaces.
11. **Rotating in Two Dimensions:** Enhance your animation by rotating the cube around two axes for a more dynamic effect.
12. **Using Flutter Scene to Load and Render a 3D Model:**  Transition from manual rendering to using the `flutter_scene` library to load and display a 3D model from a glTF asset, simplifying your workflow.

## Prerequisites

Before you begin, make sure you have the following:

*   **Flutter SDK:** You'll need Flutter version **3.28** or later. This version includes the necessary Flutter GPU APIs and Dart 3.7. You can check your Flutter version by running `flutter --version` in your terminal. If you need to upgrade, run `flutter upgrade`.
*   **Development Environment:** You should have a working Flutter development environment set up, including either Android Studio, IntelliJ IDEA, or VS Code with the Flutter and Dart plugins installed.
*   **Basic Flutter Knowledge:** This codelab assumes you have a basic understanding of Flutter development. You should be comfortable with:
    *   Creating and running Flutter projects.
    *   Working with widgets and layouts.
    *   Managing state in your Flutter apps.
*   **Command-Line Familiarity:** You'll need to be comfortable using the command line (terminal) to execute Flutter commands.
*   **Patience and Curiosity:**  GPU programming can be challenging, but it's also incredibly rewarding! Be prepared to learn new concepts and experiment with the code.

## Let's Get Started

If you're ready to dive into the exciting world of Flutter GPU programming, then let's move on to the next step and set up your development environment!



# Step 1: Setting Up and Drawing Your First Green Triangle

In this first step, we'll lay the groundwork for our exploration of Flutter GPU. We'll set up a new Flutter project, add the essential dependencies, and write our very first shader programs to render a simple, yet satisfying, green triangle on the screen. This might seem like a small step, but it's the foundation upon which we'll build all the exciting visuals to come!

## 1.1 Project Setup

Let's start by creating a new Flutter project. Open your terminal or command prompt and run the following command:

```console
$ flutter create --empty intro_flutter_gpu --platforms android,ios,macos,windows,linux
```

This command does the following:

*   `flutter create`: This is the standard command to create a new Flutter project.
*   `--empty`: This flag tells Flutter to create a project with minimal template code, giving us a clean slate to work with.
*   `intro_flutter_gpu`: This is the name of our project. You can choose a different name if you like, but we'll use this name throughout the codelab.
*   `--platforms android,ios,macos,windows,linux`: This specifies that we want to support Android, iOS, macOS, Windows and Linux platforms.

Now, navigate into the newly created project directory:

```console
$ cd intro_flutter_gpu
```

## 1.2 Adding Dependencies

We need to add a few dependencies to our project to work with Flutter GPU and some helper utilities. Run the following commands in your terminal:

```console
$ flutter pub add flutter_gpu --sdk=flutter
$ flutter pub add flutter_gpu_shaders native_assets_cli vector_math
```

Let's break down what each of these dependencies does:

*   `flutter_gpu`: This is the core package that provides the Flutter GPU APIs, allowing us to interact directly with the GPU. We're adding it directly from the Flutter SDK using `--sdk=flutter`.
*   `flutter_gpu_shaders`: This package provides tools for compiling our shader code (which we'll write in GLSL) into a format that Flutter GPU can understand.
*   `native_assets_cli`: This is a general-purpose tool to compile and package native code. We'll use it as a part of the pipeline to build our shader bundle.
*   `vector_math`: This package provides classes and functions for working with vectors and matrices, which are essential for 3D graphics.

Now, let's make sure our `pubspec.yaml` file correctly includes our shader assets. Open `pubspec.yaml` in a text editor and make the following changes:

```yaml
flutter:
  uses-material-design: true

  assets:
    - build/shaderbundles/
```

This tells Flutter to include any files located under the `build/shaderbundles/` directory in our application's assets. We'll be placing our compiled shaders there.

Here is the complete `pubspec.yaml` file for reference:

```yaml
name: intro_flutter_gpu
description: "A new Flutter project."
publish_to: 'none'
version: 0.1.0

environment:
  sdk: ^3.7.0

dependencies:
  flutter:
    sdk: flutter
  flutter_gpu:
    sdk: flutter
  flutter_gpu_shaders: ^0.2.0
  native_assets_cli: ^0.9.0
  vector_math: ^2.1.4

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0

flutter:
  uses-material-design: true

  assets:
    - build/shaderbundles/
```

## 1.3 Introduction to GLSL

Before we write our shaders, let's have a quick introduction to GLSL (OpenGL Shading Language). GLSL is the language we'll use to write small programs that run directly on the GPU. It's a C-like language with some special features for graphics programming.

In this codelab, we'll primarily be using two types of shaders:

*   **Vertex Shader:** This shader runs for each vertex of our geometry (in our case, the vertices of the triangle). It's responsible for determining the final position of each vertex on the screen.
*   **Fragment Shader:** This shader runs for each pixel (or "fragment") within the shapes we draw. It determines the color of each pixel.

## 1.4 Creating Our Shaders

Let's create our shaders. First, create a directory named `shaders` in the root of your project. Inside this directory, create two files:

1.  `simple.vert` (our vertex shader)
2.  `simple.frag` (our fragment shader)

Now, open `shaders/simple.vert` and add the following code:

```glsl
#version 460 core

in vec2 position;

void main() {
  gl_Position = vec4(position, 0.0, 1.0);
}
```

Let's break down this vertex shader:

*   `#version 460 core`: This line specifies the version of GLSL we're using. While not strictly required by Flutter GPU, it's good practice to include it, as it helps with code editors and IDEs to provide correct syntax highlighting and error checking.
*   `in vec2 position;`: This declares an input variable named `position` of type `vec2` (a 2-dimensional vector). This variable will receive the position of each vertex from our Flutter code.
*   `void main() { ... }`: This is the main function of our shader, which gets executed for each vertex.
*   `gl_Position = vec4(position, 0.0, 1.0);`: This line sets the special output variable `gl_Position`, which determines the final position of the vertex on the screen. We're converting our 2D `position` into a 4D vector (required by `gl_Position`) by adding `0.0` as the z-component and `1.0` as the w-component. We'll cover the z and w components later in the codelab.

Next, open `shaders/simple.frag` and add the following code:

```glsl
#version 460 core

out vec4 frag_color;

void main() {
  frag_color = vec4(0, 1, 0, 1);
}
```

Here's what's happening in our fragment shader:

*   `#version 460 core`:  Again, we specify the GLSL version.
*   `out vec4 frag_color;`: This declares an output variable named `frag_color` of type `vec4` (a 4-dimensional vector representing a color with red, green, blue, and alpha components).
*   `void main() { ... }`: The main function of our fragment shader.
*   `frag_color = vec4(0, 1, 0, 1);`: This line sets the `frag_color` to green. The values represent (red, green, blue, alpha), where each component ranges from 0.0 to 1.0. In this case, we have full green (1.0) and full opacity (1.0).

## 1.5 Defining the Shader Bundle

Now we need to tell Flutter GPU which shader files to include in our application and how to compile them. We do this using a "shader bundle" definition.

Create a file named `my_first_triangle.shaderbundle.json` in the root of your project and add the following content:

```json
{
    "SimpleVertex": {
        "type": "vertex",
        "file": "shaders/simple.vert"
    },
    "SimpleFragment": {
        "type": "fragment",
        "file": "shaders/simple.frag"
    }
}
```

This JSON file defines our shader bundle.  It specifies two shaders:

*   `SimpleVertex`: This is the name we'll use to refer to our vertex shader in our Flutter code. It's of type `"vertex"` and its source code is in the file `shaders/simple.vert`.
*   `SimpleFragment`: Similarly, this is the name for our fragment shader, of type `"fragment"`, and its source code is in `shaders/simple.frag`.

## 1.6 Building the Shader Bundle

To compile our GLSL shaders into a format that Flutter GPU can use, we'll create a build script using `native_assets_cli`.

Create a directory named `hook` in the root of your project, and inside it, create a file named `build.dart`. Add the following code to `hook/build.dart`:

```dart
import 'package:flutter_gpu_shaders/build.dart';
import 'package:native_assets_cli/native_assets_cli.dart';

void main(List<String> args) async {
  await build(args, (config, output) async {
    await buildShaderBundleJson(
      buildConfig: config,
      buildOutput: output,
      manifestFileName: 'my_first_triangle.shaderbundle.json',
    );
  });
}
```

This script uses the `buildShaderBundleJson` function from the `flutter_gpu_shaders` package to process our `my_first_triangle.shaderbundle.json` file and generate the compiled shader bundle.

## 1.7 Loading the Shaders in Flutter

Let's create a helper file to load our compiled shader bundle at runtime. Create a file named `lib/shaders.dart` and add the following code:

```dart
import 'package:flutter_gpu/gpu.dart' as gpu;

const String _kShaderBundlePath =
    'build/shaderbundles/my_first_triangle.shaderbundle';

gpu.ShaderLibrary? _shaderLibrary;

gpu.ShaderLibrary get shaderLibrary {
  _shaderLibrary ??= gpu.ShaderLibrary.fromAsset(_kShaderBundlePath);

  try {
    return _shaderLibrary!;
  } catch (e) {
    throw Exception('Failed to load shader bundle! ($_kShaderBundlePath)');
  }
}
```

This code does the following:

*   Defines a constant `_kShaderBundlePath` to store the path to our compiled shader bundle asset.
*   Declares a nullable `_shaderLibrary` variable to hold our loaded `gpu.ShaderLibrary`.
*   Defines a getter `shaderLibrary` that lazily loads the shader bundle from the asset if it hasn't been loaded already, using `gpu.ShaderLibrary.fromAsset()`.
*   Includes basic error handling to catch any issues during shader loading.

## 1.8 The Main Flutter Application

Now it's time to write the main Flutter code that will use Flutter GPU to render our triangle. Open `lib/main.dart` and replace its entire content with the following:

```dart
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_gpu/gpu.dart' as gpu;

import 'shaders.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter GPU Triangle Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox.expand(child: CustomPaint(painter: TrianglePainter())),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  const TrianglePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final texture = gpu.gpuContext.createTexture(
      gpu.StorageMode.devicePrivate,
      size.width.ceil(),
      size.height.ceil(),
    );
    if (texture == null) {
      throw Exception('Failed to create texture');
    }

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

    const floatsPerVertex = 2;
    final vertices = Float32List.fromList([
      -0.5, -0.5, // First vertex
      0.5, -0.5, // Second vertex
      0.0, 0.5, // Third vertex
    ]);

    final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
      ByteData.sublistView(vertices),
    );
    if (verticesDeviceBuffer == null) {
      throw Exception('Failed to create vertices device buffer');
    }

    renderPass.bindPipeline(pipeline);

    final verticesView = gpu.BufferView(
      verticesDeviceBuffer,
      offsetInBytes: 0,
      lengthInBytes: verticesDeviceBuffer.sizeInBytes,
    );
    renderPass.bindVertexBuffer(
      verticesView,
      vertices.length ~/ floatsPerVertex,
    );

    renderPass.draw();

    commandBuffer.submit();
    final image = texture.asImage();
    canvas.drawImage(image, Offset.zero, Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
```

Let's go through the most important parts of this code:

*   **`TrianglePainter`:** This is a `CustomPainter` that will handle the GPU rendering.
*   **`paint(Canvas canvas, Size size)`:** This is where the magic happens. Let's break it down further:
    *   **Texture Creation:**
        ```dart
        final texture = gpu.gpuContext.createTexture(
          gpu.StorageMode.devicePrivate,
          size.width.ceil(),
          size.height.ceil(),
        );
        ```
        We create a `Texture` using `gpu.gpuContext.createTexture()`.
        *   `gpu.StorageMode.devicePrivate`: This specifies that the texture will reside in GPU-only memory, which is the most efficient for rendering. We'll talk more about storage modes later.
        *   `size.width.ceil()`, `size.height.ceil()`: We set the texture dimensions to match the size of the `CustomPaint` widget, rounding up to the nearest integer.
    *   **RenderTarget:**
        ```dart
        final renderTarget = gpu.RenderTarget.singleColor(
          gpu.ColorAttachment(texture: texture),
        );
        ```
        We create a `RenderTarget`, which represents the surface we'll be drawing to. In this case, it's a single-color render target associated with our texture.
    *   **CommandBuffer and RenderPass:**
        ```dart
        final commandBuffer = gpu.gpuContext.createCommandBuffer();
        final renderPass = commandBuffer.createRenderPass(renderTarget);
        ```
        We create a `CommandBuffer` to hold our rendering commands and a `RenderPass` to describe a sequence of rendering operations.
    *   **Shader Loading:**
        ```dart
        final vert = shaderLibrary['SimpleVertex'];
        final frag = shaderLibrary['SimpleFragment'];
        ```
        We retrieve our vertex and fragment shaders from the `shaderLibrary` we created earlier.
    *   **RenderPipeline:**
        ```dart
        final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);
        ```
        We create a `RenderPipeline`, which combines our vertex and fragment shaders into a single unit that the GPU can execute.
    *   **Vertex Data:**
        ```dart
        const floatsPerVertex = 2;
        final vertices = Float32List.fromList([
          -0.5, -0.5, // First vertex
          0.5, -0.5, // Second vertex
          0.0, 0.5, // Third vertex
        ]);
        ```
        We define the vertices of our triangle as a `Float32List`. Each vertex has two components (x, y).
    *   **DeviceBuffer:**
        ```dart
        final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
          ByteData.sublistView(vertices),
        );
        ```
        We create a `DeviceBuffer` to store our vertex data on the GPU and copy the data from the `vertices` list to the buffer.
    *   **Binding Resources:**
        ```dart
        renderPass.bindPipeline(pipeline);

        final verticesView = gpu.BufferView(
          verticesDeviceBuffer,
          offsetInBytes: 0,
          lengthInBytes: verticesDeviceBuffer.sizeInBytes,
        );
        renderPass.bindVertexBuffer(
          verticesView,
          vertices.length ~/ floatsPerVertex,
        );
        ```
        We bind our `RenderPipeline` to the `RenderPass`. We also create a view of our `DeviceBuffer` using `gpu.BufferView` and then bind this view as the vertex buffer for the `RenderPass`.
    *   **Drawing:**
        ```dart
        renderPass.draw();
        ```
        This is where we tell the GPU to draw our triangle! The `draw()` method, in this case, will draw triangles using the currently bound vertex buffer and shaders.

*   **Submitting to the GPU:**
    *   `commandBuffer.submit();` : This is a crucial step! The `draw()` method only adds a draw command to the `commandBuffer`. It does not immediately execute the drawing on the GPU. The `commandBuffer.submit()` call sends all the accumulated commands in the `commandBuffer` to the GPU for execution. This is where the GPU actually renders our triangle to the texture.
*   **Converting to an Image:**
    *   `final image = texture.asImage();` : We convert the `Texture` that we rendered into an `Image` object. This allows us to use it with the standard Flutter `Canvas` API.
*   **Drawing to the Canvas:**
    *   `canvas.drawImage(image, Offset.zero, Paint());` : Finally, we draw the `Image` onto the `Canvas` provided by the `CustomPaint` widget. This makes our triangle visible on the screen.

*   **`shouldRepaint`:**
    *   `@override`
    *   `bool shouldRepaint(covariant CustomPainter oldDelegate) => true;`
    *   This method tells Flutter whether the `CustomPainter` should be repainted. For this simple example, we always return `true`, indicating that we want to repaint every frame. In a more complex application, you'd want to optimize this to repaint only when necessary.


## 1.9 Running the Application

Now you're ready to run the application and see your green triangle!

1.  **Run the App:**

    *   In your terminal, run your Flutter application using the standard command:

        ```console
        $ flutter run
        ```

        This will launch the app on your connected device or simulator/emulator. The Flutter build system will automatically detect and execute the `hook/build.dart` script during the build process, compiling your shaders and creating the `my_first_triangle.shaderbundle` file in the `build/shaderbundles` directory. Then the application will load the shader bundle and run the application.

You should see a beautiful green triangle displayed on the screen!

**Congratulations!** You've successfully created your first Flutter GPU application. You've written vertex and fragment shaders, set up the shader bundle compilation pipeline, and used the Flutter GPU APIs to render a triangle directly on the GPU.

## Troubleshooting

*   **"Shader compilation failed" error:** Double-check your GLSL code for syntax errors. Make sure you've correctly defined your `my_first_triangle.shaderbundle.json` file and that the paths to the shader files are correct.
*   **"Failed to load shader bundle" error:** Ensure that the `build/shaderbundles` directory is correctly listed in your `pubspec.yaml` under `assets`. If the shader bundle is not generated, try running `flutter clean` and then `flutter run` again.
*   **Nothing appears on the screen:** Verify that your `CustomPaint` widget is properly integrated into your widget tree and that `shouldRepaint` is returning `true`. Also, ensure that your device or simulator/emulator supports the required graphics APIs.

## What's Next?

In the next step, we'll add some color to our triangle and learn about attribute interpolation, making our visuals more interesting!


# Step 2: Adding Color to the Triangle

In the previous step, we drew a simple green triangle. While it was a great starting point, it's time to add some more visual flair! In this step, we'll learn how to incorporate colors into our vertices and how the GPU can smoothly interpolate those colors across the surface of the triangle, creating a beautiful gradient effect.

## 2.1 Adding Color Attributes

First, we need to modify our vertex data to include color information for each vertex. We'll use a common approach where each vertex will have a color defined by its red, green, and blue components.

Open `lib/main.dart` and update the `vertices` list within the `TrianglePainter` class as follows:

```dart
const floatsPerVertex = 5;
final vertices = Float32List.fromList([
  // Format: x, y, r, g, b,
  -0.5, -0.5, 1.0, 0.0, 0.0, // First vertex (red)
  0.5, -0.5, 0.0, 1.0, 0.0, // Second vertex (green)
  0.0, 0.5, 0.0, 0.0, 1.0, // Third vertex (blue)
]);
```

Here's what we've changed:

*   **`floatsPerVertex`:** We've increased this constant from 2 to 5 because each vertex now has five floating-point values: two for position (x, y) and three for color (r, g, b).
*   **`vertices`:** We've added color data to each vertex. Each vertex is now represented by five values: `x`, `y`, `r`, `g`, `b`. We've assigned the following colors:
    *   First vertex: Red (1.0, 0.0, 0.0)
    *   Second vertex: Green (0.0, 1.0, 0.0)
    *   Third vertex: Blue (0.0, 0.0, 1.0)

## 2.2 Modifying the Vertex Shader

Now, we need to update our vertex shader to receive this color information and pass it along to the fragment shader.

Open `shaders/simple.vert` and modify its content to the following:

```glsl
#version 460 core

in vec2 position;
in vec3 color;

out vec3 vertex_color;

void main() {
  gl_Position = vec4(position, 0.0, 1.0);
  vertex_color = color;
}
```

Here are the changes:

*   **`in vec3 color;`:** We've added an input variable `color` of type `vec3` to receive the color data from our Flutter code.
*   **`out vec3 vertex_color;`:** We've declared an output variable `vertex_color`, also a `vec3`. This variable will pass the color information to the fragment shader.
*   **`vertex_color = color;`:** Inside the `main` function, we simply assign the input `color` to the output `vertex_color`.

**Important Concept: Varying Variables**

In GLSL, output variables from the vertex shader that are passed to the fragment shader are often referred to as "varying" variables. The GPU automatically interpolates these varying variables across the primitive (in our case, the triangle) before they reach the fragment shader. This means that the fragment shader receives a smoothly blended color value for each pixel, based on the colors of the vertices.

## 2.3 Modifying the Fragment Shader

Next, we need to update our fragment shader to use the interpolated color information.

Open `shaders/simple.frag` and modify its content to the following:

```glsl
#version 460 core

in vec3 vertex_color;
out vec4 frag_color;

void main() {
  frag_color = vec4(vertex_color, 1);
}
```

Here's what's changed:

*   **`in vec3 vertex_color;`:** We've added an input variable `vertex_color` to receive the interpolated color from the vertex shader. Note that the fragment shader uses `in` for variables coming from the vertex shader.
*   **`frag_color = vec4(vertex_color, 1);`:** We now set the `frag_color` using the `vertex_color`. We create a `vec4` by combining the `vertex_color` (which is a `vec3`) with an alpha value of 1.0 (fully opaque).

## 2.4 Running the Application

Now, run the Flutter application again:

```console
$ flutter run
```

You should now see a triangle with a beautiful gradient, smoothly blending from red to green to blue!

**Explanation:**

1.  **Vertex Shader Execution:** The vertex shader runs for each of our three vertices. It receives the position and color for each vertex as inputs. It sets `gl_Position` and passes the color through to the `vertex_color` output variable.
2.  **Interpolation:** The GPU automatically interpolates the `vertex_color` values between the vertices. This means that for each pixel within the triangle, the `vertex_color` will be a blend of the colors of the three vertices, weighted by the pixel's distance to each vertex.
3.  **Fragment Shader Execution:** The fragment shader runs for each pixel within the triangle. It receives the interpolated `vertex_color` as input and uses it to set the final `frag_color` for that pixel.

The result is a smooth color gradient across the triangle, demonstrating the power of attribute interpolation in GPU programming!

## Troubleshooting

*   **Incorrect colors:** Double-check that you've correctly updated the `vertices` list in `lib/main.dart` with the `r`, `g`, `b` values for each vertex. Make sure `floatsPerVertex` is set to 5.
*   **Shader compilation errors:** Review your modified GLSL code in `simple.vert` and `simple.frag` for any syntax errors. Ensure that you're using the correct types (`vec2`, `vec3`, `vec4`) and that input/output variables are properly declared.

## What's Next?

In the next step, we'll expand our scene by drawing two triangles instead of one, creating a simple rectangular shape. Get ready to learn more about how vertices and triangles work together!


# Step 3: Drawing Two Triangles

So far, we've been working with a single triangle. Now, let's take things a step further and add a second triangle to our scene. By placing two triangles side-by-side, we can create a rectangular shape. This will help us understand how more complex shapes can be constructed from multiple triangles.

## 3.1 Defining the Vertices

First, we need to define the vertices for our second triangle. We want to create a rectangle, so we'll add three new vertices that share an edge with our first triangle.

Open `lib/main.dart` and update the `vertices` list within the `TrianglePainter` class as follows:

```dart
const floatsPerVertex = 5;
final vertices = Float32List.fromList([
  // Format: x, y, r, g, b,

  // Triangle #1
  -0.5, -0.5, 1.0, 0.0, 0.0, // bottom left
  0.5, -0.5, 0.0, 1.0, 0.0, // bottom right
  -0.5, 0.5, 0.0, 0.0, 1.0, // top left

  // Triangle #2
  0.5, -0.5, 0.0, 1.0, 0.0, // bottom right
  0.5, 0.5, 1.0, 1.0, 0.0, // top right
  -0.5, 0.5, 0.0, 0.0, 1.0, // top left
]);
```

Here's what we've done:

*   We've added three new vertices to define our second triangle.
*   Notice that the vertices are defined in a specific order. We're using a **counter-clockwise winding order** for both triangles. This is a common convention in computer graphics and can be important for techniques like back-face culling (which we'll explore later).
*   We've reused two vertices from the first triangle (bottom right and top left). This is efficient because we don't need to store the same data twice.

## 3.2 No Shader Changes Required

The great thing about this step is that we don't need to modify our shaders at all! Our existing vertex and fragment shaders are already set up to handle multiple vertices and interpolate colors. The GPU will take care of drawing both triangles using the same shader code.

## 3.3 Updating the Vertex Count

We do need to make one small change in our `lib/main.dart` file. We need to tell the GPU that we now have six vertices to draw instead of three.

In the `TrianglePainter.paint()` method, update the `renderPass.bindVertexBuffer()` call as follows:

```dart
renderPass.bindVertexBuffer(
  verticesView,
  vertices.length ~/ floatsPerVertex, // Update this line
);
```

We've changed the second argument of `bindVertexBuffer` from `3` to `vertices.length ~/ floatsPerVertex`. This dynamically calculates the number of vertices based on the size of our `vertices` array and the number of floats per vertex. This makes our code more flexible and less prone to errors if we change the number of vertices later.

## 3.4 Running the Application

Now, run the Flutter application again:

```console
$ flutter run
```

You should now see a rectangle composed of two triangles! The colors should still be smoothly interpolated across the entire shape.

**Explanation:**

1.  **Vertex Shader Execution:** The vertex shader now runs for all six vertices, including the shared vertices between the two triangles. It calculates the position and passes the color to the fragment shader for each vertex.
2.  **Interpolation:** The GPU interpolates the colors across each triangle individually. Because we've defined the colors to match at the shared vertices, the interpolation seamlessly blends the colors across both triangles.
3.  **Fragment Shader Execution:** The fragment shader runs for each pixel within both triangles, receiving the interpolated color and setting the `frag_color`.

The result is a single rectangular shape with a smooth color gradient, even though it's rendered as two separate triangles.

## Troubleshooting

*   **Missing triangle:** If you only see one triangle, double-check that you've added all six vertices to the `vertices` list and that you've updated the vertex count in the `renderPass.bindVertexBuffer()` call.
*   **Incorrect colors:** Make sure the color values for the shared vertices are identical in both triangles. Also, verify that your vertex shader is correctly passing the color to the fragment shader.
*   **Unexpected shape:** Ensure that your vertices are defined in counter-clockwise order for each triangle.

## What's Next?

In the next step, we'll explore a problem that can occur with color interpolation when vertices are shared between triangles that have different intended colors. We'll then learn how to fix this using UV mapping. Get ready to dive deeper into the world of texture coordinates!


# Step 4: Fixing Color Interpolation (Part 1) - The Problem

In the previous step, we successfully drew a rectangle using two triangles. However, our approach of sharing vertices with different colors worked only because the desired colors at the shared vertices happened to be the same for both triangles. In a more general scenario, this might not be the case, leading to incorrect color interpolation.

In this step, we'll intentionally modify our vertex colors to demonstrate this problem. This will highlight the need for a more robust solution, which we'll introduce in the next step using UV mapping.

## 4.1 Breaking the Color Interpolation

Let's update the colors of our vertices to create a situation where the shared vertices have different colors in the two triangles.

Open `lib/main.dart` and modify the `vertices` list within the `TrianglePainter` class as follows:

```dart
const floatsPerVertex = 5;
final vertices = Float32List.fromList([
  // Format: x, y, r, g, b,

  // Triangle #1
  -0.5, -0.5, 0.0, 0.0, 1.0, // bottom left (blue)
  0.5, -0.5, 1.0, 1.0, 0.0, // bottom right (yellow)
  -0.5, 0.5, 1.0, 0.0, 0.0, // top left (red)

  // Triangle #2
  0.5, -0.5, 1.0, 1.0, 0.0, // bottom right (yellow)
  0.5, 0.5, 0.0, 1.0, 0.0, // top right (green)
  -0.5, 0.5, 1.0, 0.0, 0.0, // top left (red)
]);
```

Here are the changes we've made:

*   **Triangle #1 Colors:**
    *   Bottom left: Blue (0.0, 0.0, 1.0)
    *   Bottom right: Yellow (1.0, 1.0, 0.0)
    *   Top left: Red (1.0, 0.0, 0.0)
*   **Triangle #2 Colors:**
    *   Bottom right: Yellow (1.0, 1.0, 0.0)
    *   Top right: Green (0.0, 1.0, 0.0)
    *   Top left: Red (1.0, 0.0, 0.0)

Notice that the shared vertices (bottom right and top left) now have different colors in each triangle.

## 4.2 No Shader Changes

Just like in the previous step, we don't need to modify our shaders for this demonstration. The problem we're about to see is a result of how the GPU interpolates vertex attributes, not an issue with our shader code itself.

## 4.3 Running the Application

Run the Flutter application again:

```console
$ flutter run
```

You'll see that the color interpolation is now incorrect. The colors blend in a way that we didn't intend, especially along the diagonal where the two triangles meet.

**Explanation:**

1.  **Vertex Shader Execution:** The vertex shader runs for each vertex, passing the assigned colors to the fragment shader through the `vertex_color` varying variable.
2.  **Interpolation:** The GPU interpolates the `vertex_color` across each triangle. However, because the shared vertices have different colors in each triangle, the interpolation is based on conflicting color information.
3.  **Fragment Shader Execution:** The fragment shader receives the interpolated `vertex_color`, which is now a mix of colors that doesn't reflect our desired outcome.

The result is a visual artifact where the colors don't blend as expected. This demonstrates that simply sharing vertices with different colors doesn't work reliably.

## Troubleshooting

*   **Colors are still correct:** Double-check that you've correctly updated the `vertices` list with the new color values, especially for the shared vertices. Make sure you've saved the changes to `lib/main.dart` and that Flutter has hot reloaded the application.

## What's Next?

In the next step, we'll introduce UV mapping as a solution to this color interpolation problem. UV mapping provides a more flexible and accurate way to control how colors (and textures) are applied to surfaces, and it will allow us to achieve the desired color separation between our two triangles. Get ready to learn about texture coordinates!

# Step 5: Fixing Color Interpolation (Part 2) - Introducing UV Mapping

In the previous step, we encountered a problem with color interpolation when shared vertices had different colors in our two triangles. Now, we'll introduce a powerful technique called **UV mapping** to solve this issue. UV mapping allows us to define how colors (or textures) are mapped onto a surface, giving us more control and flexibility.

## 5.1 What is UV Mapping?

UV mapping is a technique used in computer graphics to map a 2D image or color onto a 3D surface. It's like wrapping a gift: you have a flat sheet of wrapping paper (the 2D image or color), and you want to wrap it around a box (the 3D surface). UV coordinates define how the wrapping paper should be placed on the box.

*   **UV Coordinates:** UV coordinates are 2D coordinates, typically ranging from 0.0 to 1.0, that specify a location within a 2D image or a color space.
    *   `U` represents the horizontal axis.
    *   `V` represents the vertical axis.
    *   (0.0, 0.0) usually corresponds to the bottom-left corner.
    *   (1.0, 1.0) usually corresponds to the top-right corner.
*   **Mapping to Vertices:** In UV mapping, we assign UV coordinates to each vertex of our geometry. This tells the GPU how to map the 2D image or color space onto the surface defined by those vertices.
*   **Interpolation:** Just like with color attributes, the GPU automatically interpolates the UV coordinates across the surface of each triangle. This means that each pixel within the triangle gets a unique UV coordinate, which can then be used to look up the corresponding color.

## 5.2 Updating Vertex Data

Let's update our vertex data to use UV coordinates instead of per-vertex colors.

Open `lib/main.dart` and modify the `vertices` list and `floatsPerVertex` within the `TrianglePainter` class as follows:

```dart
const floatsPerVertex = 4;
final vertices = Float32List.fromList([
  // Format: x, y, u, v,

  // Triangle #1
  -0.5, -0.5, 0.0, 0.0, // bottom left
  0.5, -0.5, 1.0, 0.0, // bottom right
  -0.5, 0.5, 0.0, 1.0, // top left

  // Triangle #2
  0.5, -0.5, 1.0, 0.0, // bottom right
  0.5, 0.5, 1.0, 1.0, // top right
  -0.5, 0.5, 0.0, 1.0, // top left
]);
```

Here's what we've changed:

*   **`floatsPerVertex`:** We've changed this back to 4 because each vertex now has four values: two for position (x, y) and two for UV coordinates (u, v).
*   **`vertices`:** We've replaced the `r`, `g`, `b` values with `u`, `v` values. We're assigning UV coordinates as follows:
    *   Bottom-left: (0.0, 0.0)
    *   Bottom-right: (1.0, 0.0)
    *   Top-left: (0.0, 1.0)
    *   Top-right: (1.0, 1.0)

Notice that both triangles now use the same UV coordinates for their shared vertices.

## 5.3 Modifying the Vertex Shader

Now, we need to update our vertex shader to pass the UV coordinates to the fragment shader.

Open `shaders/simple.vert` and modify its content to the following:

```glsl
#version 460 core

in vec2 position;
in vec2 uv;

out vec2 vertex_uv;

void main() {
  gl_Position = vec4(position, 0.0, 1.0);
  vertex_uv = uv;
}
```

Here's what's changed:

*   **`in vec2 uv;`:** We've added an input variable `uv` of type `vec2` to receive the UV coordinates.
*   **`out vec2 vertex_uv;`:** We've declared an output variable `vertex_uv` to pass the UV coordinates to the fragment shader.
*   **`vertex_uv = uv;`:** We simply assign the input `uv` to the output `vertex_uv`.

## 5.4 Modifying the Fragment Shader

Finally, we need to update our fragment shader to use the interpolated UV coordinates to determine the fragment color.

Open `shaders/simple.frag` and modify its content to the following:

```glsl
#version 460 core

in vec2 vertex_uv;
out vec4 frag_color;

const vec4 top_left_color = vec4(1, 0, 0, 1);
const vec4 top_right_color = vec4(0, 1, 0, 1);
const vec4 bottom_left_color = vec4(0, 0, 1, 1);
const vec4 bottom_right_color = vec4(1, 1, 0, 1);

void main() {
  frag_color =
    mix(mix(bottom_left_color, bottom_right_color, vertex_uv.x),
        mix(top_left_color, top_right_color, vertex_uv.x), vertex_uv.y);
}
```

Let's break down these changes:

*   **`in vec2 vertex_uv;`:** We've added an input variable `vertex_uv` to receive the interpolated UV coordinates from the vertex shader.
*   **`const vec4 ...`:** We've defined four constant `vec4` variables to represent the colors we want to use for each corner of our rectangle:
    *   `top_left_color`: Red
    *   `top_right_color`: Green
    *   `bottom_left_color`: Blue
    *   `bottom_right_color`: Yellow
*   **`frag_color = ...`:** We're using the `mix` function to linearly interpolate between the colors based on the `vertex_uv` coordinates.
    *   `mix(bottom_left_color, bottom_right_color, vertex_uv.x)`: This interpolates between the bottom-left and bottom-right colors based on the `x` component of the UV coordinate.
    *   `mix(top_left_color, top_right_color, vertex_uv.x)`: This interpolates between the top-left and top-right colors based on the `x` component of the UV coordinate.
    *   `mix(..., ..., vertex_uv.y)`: This interpolates between the results of the previous two `mix` calls based on the `y` component of the UV coordinate.

This effectively creates a color gradient that maps our four corner colors to the corresponding UV coordinates.

## 5.5 Running the Application

Run the Flutter application again:

```console
$ flutter run
```

You should now see a rectangle with the colors correctly separated into the two triangles, even though the shared vertices have the same UV coordinates. The top-left triangle is a blend of red, blue and yellow. The bottom-right triangle is a blend of yellow, green and blue.

**Explanation:**

1.  **Vertex Shader Execution:** The vertex shader runs for each vertex, passing the position and UV coordinates to the fragment shader.
2.  **Interpolation:** The GPU interpolates the UV coordinates across each triangle. Each pixel within a triangle receives a unique UV coordinate.
3.  **Fragment Shader Execution:** The fragment shader runs for each pixel. It receives the interpolated `vertex_uv` and uses it to sample a color from our defined color space using the `mix` function. The result is that each triangle gets its own distinct color gradient, even though they share vertices.

## Troubleshooting

*   **Incorrect colors:** Double-check that you've correctly updated the `vertices` list with the UV coordinates (u, v). Make sure you've defined the `top_left_color`, `top_right_color`, `bottom_left_color`, and `bottom_right_color` constants correctly in your fragment shader.
*   **Shader compilation errors:** Review your modified GLSL code in `simple.vert` and `simple.frag` for any syntax errors. Ensure that you're using the correct types (`vec2`, `vec4`) and that input/output variables are properly declared.

## What's Next?

In the next step, we'll leave behind our simple triangles and venture into the realm of computational art by rendering the famous Mandelbrot set using a fragment shader. Get ready to see the beauty of mathematics visualized on your screen!

# Step 6: Rendering a Mandelbrot Set

In this step, we'll explore the fascinating world of fractals by rendering the iconic Mandelbrot set. We'll leverage the power of our fragment shader to perform the necessary calculations and generate the visually stunning fractal pattern directly on the GPU.

## 6.1 What is the Mandelbrot Set?

The Mandelbrot set is a famous fractal that exhibits self-similarity at various scales. It's defined by a simple mathematical formula, yet it produces incredibly complex and intricate patterns. The set is based on the behavior of complex numbers under repeated iteration of a specific equation.

**The Formula:**

The Mandelbrot set is defined by the following iterative formula:

```
z<sub>n+1</sub> = z<sub>n</sub><sup>2</sup> + c
```

where:

*   `z` is a complex number.
*   `c` is a complex constant.
*   `n` is the iteration number.

We start with `z<sub>0</sub> = 0` and iterate the formula for a fixed number of times or until `|z|` (the magnitude of `z`) becomes greater than 2.

**Membership in the Set:**

A complex number `c` belongs to the Mandelbrot set if the magnitude of `z` remains bounded (i.e., does not escape to infinity) after a certain number of iterations.

**Coloring the Set:**

To visualize the Mandelbrot set, we typically assign colors to points in the complex plane based on how quickly the corresponding `z` value escapes (if it does). Points that escape quickly get one color, points that escape slowly get another, and points that remain bounded (i.e., belong to the set) are usually colored black.

## 6.2 Updating Vertex Data

We need to adjust our UV coordinates slightly, to ensure the Mandelbrot is correctly positioned and scaled.

Open `lib/main.dart` and modify the `vertices` list within the `TrianglePainter` class as follows:

```dart
const floatsPerVertex = 4;
final vertices = Float32List.fromList([
  // Format: x, y, u, v,

  // Triangle #1
  -0.8, -0.8, -1.0, -1.0, // bottom left
  0.8, -0.8, 1.0, -1.0, // bottom right
  -0.8, 0.8, -1.0, 1.0, // top left

  // Triangle #2
  0.8, -0.8, 1.0, -1.0, // bottom right
  0.8, 0.8, 1.0, 1.0, // top right
  -0.8, 0.8, -1.0, 1.0, // top left
]);
```

Here's what we've changed:

*   **`vertices`:** We've adjusted the x and y coordinates to make the rendered area larger, and we've shifted the UV coordinates such that they cover the range from -1.0 to 1.0 in both dimensions.

## 6.3 Modifying the Fragment Shader

Now, we'll update our fragment shader to implement the Mandelbrot set calculation and color mapping.

Open `shaders/simple.frag` and replace its content with the following:

```glsl
#version 460 core

in vec2 vertex_uv;
out vec4 frag_color;

// Adapted from https://www.youtube.com/shorts/h5PuIm6fRr8
float mandelbrot(vec2 uv) {
  const float MAX_ITER = 128;
  vec2 c =  1.2 * uv - vec2(0.7, 0.0);
  vec2 z = vec2(0.0);

  for (float iter = 0.0; iter < MAX_ITER; iter++) {
    z = vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y) + c;
    if (length(z) > 4.0) {
      return iter / MAX_ITER;
    }
  }

  return 0.0;
}

void main() {
  float m = mandelbrot(vertex_uv);
  vec3 col = vec3(m);
  col = pow(col, vec3(0.4545, 0.3, 0.1));
  frag_color = vec4(col, 1.0);
}
```

Let's break down this code:

*   **`mandelbrot(vec2 uv)` function:**
    *   `const float MAX_ITER = 128;`: Defines the maximum number of iterations.
    *   `vec2 c = 1.2 * uv - vec2(0.7, 0.0);`: Scales and translates the UV coordinates to create the complex constant `c`. The specific values here are chosen to center and zoom in on an interesting part of the Mandelbrot set.
    *   `vec2 z = vec2(0.0);`: Initializes `z` to 0.
    *   `for (float iter = 0.0; iter < MAX_ITER; iter++)`: The main iteration loop.
    *   `z = vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y) + c;`: Implements the Mandelbrot formula: `z = z*z + c`. This is done using complex number arithmetic, where `vec2` represents a complex number with its `x` component as the real part and its `y` component as the imaginary part.
    *   `if (length(z) > 4.0)`: Checks if the magnitude of `z` has exceeded 2 (which we square to get 4 to avoid a square root calculation). If it has, the point is considered to have escaped.
    *   `return iter / MAX_ITER;`: Returns a value between 0.0 and 1.0 based on how many iterations it took for `z` to escape.
    *   `return 0.0;`: If the loop completes without escaping, the point is considered to be in the Mandelbrot set, and we return 0.0.
*   **`main()` function:**
    *   `float m = mandelbrot(vertex_uv);`: Calls the `mandelbrot` function to get the escape value for the current fragment's UV coordinate.
    *   `vec3 col = vec3(m);`: Creates a grayscale color based on the escape value.
    *   `col = pow(col, vec3(0.4545, 0.3, 0.1));` : Applies a power function to adjust the color mapping, making the image more visually appealing. The specific values used here are chosen for aesthetic reasons. This is not part of the core Mandelbrot calculation but rather a color manipulation technique.
    *   `frag_color = vec4(col, 1.0);`: Sets the fragment color, using the calculated color and an alpha of 1.0.

## 6.4 No Vertex Shader Changes

We don't need to modify our vertex shader for this step. It still simply passes the UV coordinates to the fragment shader.

## 6.5 Running the Application

Run the Flutter application again:

```console
$ flutter run
```

You should now see a beautiful rendering of the Mandelbrot set! The colors will vary based on how quickly each point escapes the set, and the black region in the center represents the points that are considered to be within the set.

**Explanation:**

1.  **Vertex Shader Execution:** The vertex shader runs for each vertex, passing the adjusted UV coordinates to the fragment shader.
2.  **Interpolation:** The GPU interpolates the UV coordinates across each triangle.
3.  **Fragment Shader Execution:** The fragment shader runs for each pixel. It receives the interpolated `vertex_uv` and uses it as input to the `mandelbrot` function. The `mandelbrot` function calculates the escape value for that point in the complex plane, and the fragment shader uses this value to determine the fragment's color.

## Troubleshooting

*   **Incorrect rendering:** Double-check that you've correctly updated the `vertices` list with the new UV coordinates in `lib/main.dart`. Make sure you've copied the `mandelbrot` function and the color mapping code accurately into your `shaders/simple.frag` file.
*   **Shader compilation errors:** Review your modified GLSL code in `simple.frag` for any syntax errors. Ensure that you're using the correct types (`vec2`, `vec3`, `vec4`, `float`) and that function calls are properly formed.

## What's Next?

In the next step, we'll add some animation to our scene by introducing basic 3D transformations. We'll start by rotating our rendered image around the Y-axis. Get ready to enter the third dimension!

# Step 7: Broken 3D Animation

In this step, we'll start to explore the third dimension by adding animation to our scene. We'll introduce the concept of a **model matrix** and use it to rotate our rendered image around the Y-axis. While our initial attempt will result in a somewhat "broken" animation, it will set the stage for us to learn about more advanced transformations in the next step.

## 7.1 Introducing 3D Transformations

In computer graphics, transformations are used to manipulate the position, orientation, and scale of objects in a scene. These transformations are typically represented by matrices. For now, we'll focus on one specific type of transformation: **rotation**.

**Rotation Matrix:**

A rotation matrix is a special type of matrix that, when multiplied by a vertex's coordinates, rotates that vertex around a specific axis. In our case, we want to rotate around the Y-axis. The basic form of a 3D rotation matrix around the Y-axis is:

```
| cos(θ)  0  sin(θ) |
|   0     1    0    |
| -sin(θ) 0  cos(θ) |
```

where θ (theta) is the angle of rotation.

**Model Matrix:**

The model matrix is used to transform vertices from their local object space to the world space. It can incorporate translation (position), rotation, and scaling. In this step, we'll use the model matrix to perform our rotation.

## 7.2 Adding Animation to `lib/main.dart`

First, we need to add animation capabilities to our main Flutter application.

Open `lib/main.dart` and make the following changes:

1.  **Import `dart:math` and `vector_math`:**

    ```dart
    import 'dart:math' as math;
    import 'package:vector_math/vector_math.dart' as vm;
    ```

    We need `dart:math` for trigonometric functions (sine and cosine) and `vector_math` for matrix operations.
2.  **Make `MainApp` a `StatefulWidget`:**

    ```dart
    class MainApp extends StatefulWidget {
      const MainApp({super.key});

      @override
      State<MainApp> createState() => _MainAppState();
    }
    ```
    We convert `MainApp` to a `StatefulWidget` because we need to manage the animation state.
3. **Add an `AnimationController`:**

    ```dart
    class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
      late AnimationController _controller;
      late Animation<double> _animation;

      @override
      void initState() {
        super.initState();
        _controller = AnimationController(
          duration: const Duration(seconds: 15),
          vsync: this,
        )..repeat();

        _animation = Tween<double>(begin: 0, end: 2 * math.pi).animate(_controller);
      }

      @override
      void dispose() {
        _controller.dispose();
        super.dispose();
      }

      // ... rest of the class remains unchanged
    ```

    *   `_MainAppState` now uses the `SingleTickerProviderStateMixin` to provide a ticker for the animation.
    *   In `initState()`, we create an `AnimationController` that will run for 15 seconds and repeat indefinitely.
    *   We create an `Animation<double>` called `_animation` that will provide us with an animated value ranging from 0 to 2π (a full circle in radians).
    *   In `dispose()`, we release the `AnimationController`.

4.  **Wrap `CustomPaint` with `AnimatedBuilder`:**

    ```dart
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
    ```

    *   We wrap our `CustomPaint` widget with an `AnimatedBuilder`. This widget will rebuild its child whenever the `_animation` value changes.
    *   The `builder` function of `AnimatedBuilder` provides the current animation value, which we'll pass to our `TrianglePainter`.

5.  **Modify `TrianglePainter`:**

    ```dart
    class TrianglePainter extends CustomPainter {
      const TrianglePainter({required this.angle});

      final double angle;

      // ... rest of the class remains unchanged
    ```

    *   We add an `angle` property to `TrianglePainter` to receive the current animation value.

## 7.3 Creating the Model Matrix

Now, let's create our model matrix inside the `TrianglePainter.paint()` method.

Add the following code inside the `paint()` method, just after the creation of `verticesDeviceBuffer`:

```dart
final model = vm.Matrix4.rotationY(angle);

final vertUniforms = [model];

final vertUniformsDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
  ByteData.sublistView(
    Float32List.fromList(vertUniforms.expand((m) => m.storage).toList()),
  ),
);

if (vertUniformsDeviceBuffer == null) {
  throw Exception('Failed to create vert uniforms device buffer');
}
```

Here's what we've done:

*   **`final model = vm.Matrix4.rotationY(angle);`:** We create a 4x4 rotation matrix using the `vm.Matrix4.rotationY()` function from the `vector_math` package. This matrix represents a rotation around the Y-axis by the given `angle` (which comes from our animation).
*   **`final vertUniforms = [model];`:** We create a list to hold our uniform data. For now, it just contains the model matrix.
*   **`final vertUniformsDeviceBuffer = ...`:** We create a `DeviceBuffer` to store our uniform data on the GPU and copy the `vertUniforms` data to it. We use the `expand((m) => m.storage).toList()` to flatten the matrix into a list of floats.

## 7.4 Binding Uniforms

We need to bind our uniform buffer to the shader. Add the following code inside the `paint()` method, just after the `renderPass.bindVertexBuffer()` call:

```dart
final vertUniformsView = gpu.BufferView(
  vertUniformsDeviceBuffer,
  offsetInBytes: 0,
  lengthInBytes: vertUniformsDeviceBuffer.sizeInBytes,
);

renderPass.bindUniform(vert.getUniformSlot('VertInfo'), vertUniformsView);
```

Here's what's happening:

*   **`final vertUniformsView = ...`:** We create a `BufferView` that provides a view into our uniform `DeviceBuffer`.
*   **`renderPass.bindUniform(vert.getUniformSlot('VertInfo'), vertUniformsView);`:** We bind our uniform buffer view to a uniform slot in the vertex shader. The uniform slot is identified by the name `'VertInfo'`, which we'll define in our shader in the next step.

## 7.5 Modifying the Vertex Shader

Now, let's update our vertex shader to use the model matrix.

Open `shaders/simple.vert` and modify its content to the following:

```glsl
#version 460 core

in vec2 position;
in vec2 uv;

out vec2 vertex_uv;

uniform VertInfo {
  mat4 model;
};

void main() {
  gl_Position = model * vec4(position, 0.0, 1.0);
  vertex_uv = uv;
}
```

Here are the changes:

*   **`uniform VertInfo { ... };`:** We define a uniform block named `VertInfo`. This block contains a single member: a `mat4` (4x4 matrix) named `model`. This is where we'll receive our model matrix from the Flutter code.
*   **`gl_Position = model * vec4(position, 0.0, 1.0);`:** We now multiply the vertex position by the `model` matrix before assigning it to `gl_Position`. This applies the rotation transformation to our vertices.

## 7.6 Running the Application

Run the Flutter application again:

```console
$ flutter run
```

You should now see the Mandelbrot set rotating around the Y-axis. However, the animation will likely look distorted and not quite what you'd expect from a proper 3D rotation.

**Explanation:**

1.  **Animation:** The `AnimationController` drives the `_animation` value, which is passed to the `TrianglePainter` each frame.
2.  **Model Matrix Creation:** In the `paint()` method, we create a new rotation matrix based on the current `angle`.
3.  **Uniform Buffer Update:** We update the `vertUniformsDeviceBuffer` with the new model matrix data each frame.
4.  **Vertex Shader Execution:** The vertex shader receives the model matrix as a uniform and applies it to each vertex's position.
5.  **Rendering:** The GPU renders the transformed vertices, resulting in the rotated image.

The reason the animation looks "broken" is that we're only applying a rotation transformation. We're not taking into account perspective or the fact that our "camera" is essentially positioned at the same location as our object.

## Troubleshooting

*   **Nothing is rotating:** Double-check that you've correctly set up the `AnimationController`, wrapped `CustomPaint` with `AnimatedBuilder`, and passed the `_animation.value` to `TrianglePainter`. Make sure the `model` matrix is being created and the uniform buffer is being updated and bound correctly.
*   **Shader compilation errors:** Review your modified GLSL code in `simple.vert` for any syntax errors. Ensure that the `VertInfo` uniform block is defined correctly and that you're using the correct types (`mat4`, `vec4`).

## What's Next?

In the next step, we'll fix our "broken" 3D animation by introducing two new concepts: the **view matrix** and the **projection matrix**. These matrices will help us create a more realistic 3D perspective and position our "camera" in the scene. Get ready to see your Mandelbrot set in a whole new dimension!

# Step 8: Fixing 3D Animation with View and Projection Matrices

In the previous step, we added a basic rotation animation, but the result was distorted because we were only applying a model transformation without considering perspective or camera position. In this step, we'll fix this by introducing two essential concepts in 3D graphics: the **view matrix** and the **projection matrix**.

## 8.1 Understanding View and Projection Matrices

To achieve a realistic 3D effect, we need to simulate how a camera "sees" the scene. This is where view and projection matrices come into play.

**View Matrix:**

The view matrix transforms vertices from world space to view space (also known as camera space). It represents the position and orientation of the camera in the world. Imagine you're holding a camera:

*   **Position:** Where is the camera located in the 3D world?
*   **Target:** What point is the camera looking at?
*   **Up Direction:** Which way is "up" for the camera?

The view matrix effectively transforms the entire world as if it were being viewed from the camera's perspective.

**Projection Matrix:**

The projection matrix transforms vertices from view space to clip space. It defines how the 3D scene is projected onto the 2D screen. There are two main types of projection:

*   **Perspective Projection:** This simulates how we perceive the real world. Objects that are farther away appear smaller, and parallel lines appear to converge in the distance. This is the most common type of projection for 3D graphics.
*   **Orthographic Projection:** This projects objects onto the screen without any perspective distortion. Parallel lines remain parallel, and objects maintain their size regardless of distance. This is often used for 2D graphics or technical drawings.

In this codelab, we'll use perspective projection.

## 8.2 Updating Uniforms in `lib/main.dart`

First, we need to update our uniform data to include the view and projection matrices.

Open `lib/main.dart` and make the following changes inside the `TrianglePainter.paint()` method:

```dart
final model = vm.Matrix4.rotationY(angle);
final view = vm.Matrix4.translation(vm.Vector3(0.0, 0.0, -2.0));
final projection = vm.makePerspectiveMatrix(
  vm.radians(45),
  size.aspectRatio,
  0.1,
  100,
);

final vertUniforms = [model, view, projection];

// ... rest of the method remains the same
```

Here's what we've done:

*   **`final view = vm.Matrix4.translation(vm.Vector3(0.0, 0.0, -2.0));`:** We create a view matrix that translates the world by -2.0 units along the Z-axis. This effectively moves our "camera" 2 units backward, allowing us to see the object in front of it.
*   **`final projection = vm.makePerspectiveMatrix(...)`:** We create a perspective projection matrix using the `vm.makePerspectiveMatrix()` function. Let's break down the parameters:
    *   `vm.radians(45)`: This sets the field of view (FOV) to 45 degrees. The FOV determines how much of the scene is visible.
    *   `size.aspectRatio`: This sets the aspect ratio of our view, which is the ratio of the width to the height. We use the `size` of the `CustomPaint` widget to get the correct aspect ratio.
    *   `0.1`: This is the near clipping plane. Objects closer than this distance will not be rendered.
    *   `100`: This is the far clipping plane. Objects farther away than this distance will not be rendered.
*   **`final vertUniforms = [model, view, projection];`:** We update our `vertUniforms` list to include the `model`, `view`, and `projection` matrices.

**Important Note:** The order in which we multiply these matrices matters. We'll discuss this in detail when we update the vertex shader.

## 8.3 Updating the Vertex Shader

Now, let's modify our vertex shader to use the view and projection matrices.

Open `shaders/simple.vert` and update its content to the following:

```glsl
#version 460 core

in vec2 position;
in vec2 uv;

out vec2 vertex_uv;

uniform VertInfo {
  mat4 model;
  mat4 view;
  mat4 projection;
};

void main() {
  gl_Position = projection * view * model * vec4(position, 0.0, 1.0);
  vertex_uv = uv;
}
```

Here are the changes:

*   **`uniform VertInfo { ... };`:** We've added the `view` and `projection` matrices to our `VertInfo` uniform block.
*   **`gl_Position = projection * view * model * vec4(position, 0.0, 1.0);`:** This is the most crucial change. We now multiply the vertex position by all three matrices in the following order:
    1.  `model`: Transforms the vertex from object space to world space.
    2.  `view`: Transforms the vertex from world space to view space (camera space).
    3.  `projection`: Transforms the vertex from view space to clip space.

**Matrix Multiplication Order:**

The order of matrix multiplication is essential because matrix multiplication is not commutative (i.e., A \* B is not the same as B \* A). We need to apply the transformations in the correct order to get the desired result.

In our case, we first apply the model transformation, then the view transformation, and finally the projection transformation. This ensures that the transformations are applied in the correct sequence, from local object coordinates to the final screen coordinates.

## 8.4 Running the Application

Run the Flutter application again:

```console
$ flutter run
```

You should now see the Mandelbrot set rotating correctly in 3D! The animation should appear much more natural, with the set rotating around its center and the perspective changing as it turns.

**Explanation:**

1.  **Uniform Update:** Each frame, we update the `vertUniformsDeviceBuffer` with the new `model`, `view`, and `projection` matrices.
2.  **Vertex Shader Execution:** The vertex shader receives these matrices as uniforms. It then applies the transformations to each vertex's position in the correct order: model, view, and then projection.
3.  **Perspective Division:** After the vertex shader, the GPU performs perspective division. It divides the `x`, `y`, and `z` components of `gl_Position` by its `w` component. This step is crucial for creating the perspective effect, making objects farther away appear smaller.
4.  **Clipping:** The GPU clips any vertices that fall outside the viewing frustum (defined by the near and far clipping planes and the field of view).
5.  **Rasterization:** The GPU rasterizes the triangles, interpolating the UV coordinates and other varying variables.
6.  **Fragment Shader Execution:** The fragment shader runs for each pixel, calculating the color based on the interpolated UV coordinates and the Mandelbrot formula.

## Troubleshooting

*   **The set is not visible:** Double-check that your view matrix is translating along the negative Z-axis (e.g., `vm.Vector3(0.0, 0.0, -2.0)`). Make sure your near and far clipping planes are set appropriately (e.g., `0.1` and `100`).
*   **Distorted or incorrect rotation:** Verify that your model, view, and projection matrices are being created correctly and that they are being multiplied in the correct order in the vertex shader (`projection * view * model`).
*   **Shader compilation errors:** Review your modified GLSL code in `simple.vert` for any syntax errors. Ensure that the `VertInfo` uniform block is defined correctly and that you're using the correct matrix types (`mat4`).

## What's Next?

In the next step, we'll replace our two triangles with a more complex 3D object: a cube! We'll also modify our animation to rotate the cube around two axes, creating a more interesting visual effect. Get ready to see a fully formed 3D object rendered using Flutter GPU!

# Step 9: Rendering a Rotating Cube

In this step, we'll replace our two triangles with a 3D cube, taking our Flutter GPU exploration to the next level. We'll define the vertices of a cube, update our shaders to handle 3D positions and colors, and modify our animation to rotate the cube around two axes.

## 9.1 Defining Cube Vertices

First, we need to define the vertex data for our cube. A cube has 8 vertices, but to render it properly with triangles, we'll need to define 36 vertices (12 triangles * 3 vertices per triangle). This is because each vertex needs unique normal information (which we will fake using color for this project) for each face it belongs to.

Open `lib/main.dart` and replace the `vertices` list and `floatsPerVertex` definition within the `TrianglePainter` class with the following:

```dart
const floatsPerVertex = 6;
final vertices = Float32List.fromList([
  // layout: x, y, z, r, g, b

  // Back Face
  -0.5, -0.5, -0.5, 1.0, 0.0, 0.0, // Bottom-left
  0.5, -0.5, -0.5, 0.0, 1.0, 0.0, // Bottom-right
  0.5, 0.5, -0.5, 0.0, 0.0, 1.0, // Top-right
  0.5, 0.5, -0.5, 0.0, 0.0, 1.0, // Top-right
  -0.5, 0.5, -0.5, 1.0, 1.0, 0.0, // Top-left
  -0.5, -0.5, -0.5, 1.0, 0.0, 0.0, // Bottom-left

  // Front Face
  -0.5, -0.5, 0.5, 1.0, 0.0, 0.0, // Bottom-left
  0.5, 0.5, 0.5, 0.0, 0.0, 1.0, // Top-right
  0.5, -0.5, 0.5, 0.0, 1.0, 0.0, // Bottom-right
  0.5, 0.5, 0.5, 0.0, 0.0, 1.0, // Top-right
  -0.5, -0.5, 0.5, 1.0, 0.0, 0.0, // Bottom-left
  -0.5, 0.5, 0.5, 1.0, 1.0, 0.0, // Top-left

  // Left Face
  -0.5, 0.5, 0.5, 1.0, 0.0, 0.0, // Top-right
  -0.5, -0.5, -0.5, 0.0, 0.0, 1.0, // Bottom-left
  -0.5, 0.5, -0.5, 0.0, 1.0, 0.0, // Top-left
  -0.5, -0.5, -0.5, 0.0, 0.0, 1.0, // Bottom-left
  -0.5, 0.5, 0.5, 1.0, 0.0, 0.0, // Top-right
  -0.5, -0.5, 0.5, 1.0, 1.0, 0.0, // Bottom-right

  // Right Face
  0.5, 0.5, 0.5, 1.0, 0.0, 0.0, // Top-left
  0.5, 0.5, -0.5, 0.0, 1.0, 0.0, // Top-right
  0.5, -0.5, -0.5, 0.0, 0.0, 1.0, // Bottom-right
  0.5, -0.5, -0.5, 0.0, 0.0, 1.0, // Bottom-right
  0.5, -0.5, 0.5, 1.0, 1.0, 0.0, // Bottom-left
  0.5, 0.5, 0.5, 1.0, 0.0, 0.0, // Top-left

  // Bottom Face
  0.5, -0.5, -0.5, 0.0, 1.0, 0.0, // Top-right
  -0.5, -0.5, -0.5, 1.0, 0.0, 0.0, // Top-left
  0.5, -0.5, 0.5, 0.0, 0.0, 1.0, // Bottom-right
  -0.5, -0.5, 0.5, 1.0, 1.0, 0.0, // Bottom-left
  0.5, -0.5, 0.5, 0.0, 0.0, 1.0, // Bottom-right
  -0.5, -0.5, -0.5, 1.0, 0.0, 0.0, // Top-left

  // Top Face
  -0.5, 0.5, -0.5, 1.0, 0.0, 0.0, // Bottom-left
  0.5, 0.5, -0.5, 0.0, 1.0, 0.0, // Bottom-right
  0.5, 0.5, 0.5, 0.0, 0.0, 1.0, // Top-right
  0.5, 0.5, 0.5, 0.0, 0.0, 1.0, // Top-right
  -0.5, 0.5, 0.5, 1.0, 1.0, 0.0, // Top-left
  -0.5, 0.5, -0.5, 1.0, 0.0, 0.0, // Bottom-left
]);
```

Here's what we've done:

*   **`floatsPerVertex`:** We've changed this to `6` because each vertex now has six values: three for position (x, y, z) and three for color (r, g, b).
*   **`vertices`:** We've defined 36 vertices, representing the 12 triangles that make up the cube. Each group of 6 lines represents a face of the cube. The vertices of each triangle are defined in counter-clockwise order. We're using color to indicate the normal direction of each face (e.g. the back face is a mix of red, green and blue, the right face is a mix of red, green and yellow, etc).

## 9.2 Modifying the Vertex Shader

Since we're now working with 3D positions and per-vertex colors, we need to update our vertex shader.

Open `shaders/simple.vert` and replace its content with the following:

```glsl
#version 460 core

in vec3 position;
in vec3 color;

out vec3 vertex_color;

uniform VertInfo {
  mat4 model;
  mat4 view;
  mat4 projection;
};

void main() {
  gl_Position = projection * view * model * vec4(position, 1.0);
  vertex_color = color;
}
```

Here's what's changed:

*   **`in vec3 position;`:** We're now using a `vec3` for the position since our vertices have three coordinates (x, y, z).
*   **`in vec3 color;`:** We're taking a `vec3` for the color.
*   **`out vec3 vertex_color`:** We're outputting the color to the fragment shader.
*   **`gl_Position = projection * view * model * vec4(position, 1.0);`:**  We're still multiplying by the model, view, and projection matrices, but now our `position` is a `vec3`, so we create a `vec4` by adding `1.0` as the `w` component.

## 9.3 Modifying the Fragment Shader

Let's update our fragment shader to use the interpolated color.

Open `shaders/simple.frag` and replace its content with the following:

```glsl
#version 460 core

in vec3 vertex_color;
out vec4 frag_color;

void main() {
  frag_color = vec4(vertex_color, 1.0);
}
```

Here's what's changed:

*   **`in vec3 vertex_color;`:** We're receiving the interpolated color from the vertex shader.
*   **`frag_color = vec4(vertex_color, 1.0);`:** We set the fragment color using the interpolated `vertex_color` and an alpha of 1.0.

## 9.4 Updating the Animation in `lib/main.dart`

Let's modify our animation to rotate the cube around both the X and Y axes. Update the `_MainAppState` class and the animation code in your `lib/main.dart` as follows:

```dart
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

  // ... rest of the class
```

And in your `TrianglePainter.paint()` method, update the creation of your model matrix:

```dart
final model = vm.Matrix4.identity()
  ..rotateY(angle)
  ..rotateX(angle / 2);
final view = vm.Matrix4.translation(vm.Vector3(0.0, 0.0, -2.5));
final projection = vm.makePerspectiveMatrix(
  vm.radians(45),
  size.aspectRatio,
  0.1,
  100,
);
```

Here's what we changed:

*   **`_controller`**: We changed the animation duration to `30` seconds to make the rotation slower and easier to observe.
*   **`_animation`**: We changed the animation range to `4 * math.pi` so that the cube makes two full rotations during the animation.
*   **`model`:**
    *   We now start with an identity matrix using `vm.Matrix4.identity()`.
    *   We then apply a rotation around the Y-axis using `..rotateY(angle)`.
    *   We then apply a rotation around the X-axis using `..rotateX(angle / 2)`, making it rotate at half the speed of the Y-axis rotation. This creates a more interesting combined rotation.
*   **`view`:** We changed the translation of the view matrix to -2.5 to pull the camera further away.

## 9.5 Running the Application

Run the Flutter application again:

```console
$ flutter run
```

You should now see a rotating 3D cube! The cube will rotate around both the Y and X axes, and each face will have a different color.

**Explanation:**

1.  **Vertex Data:** We've defined the vertices of a cube, including both position and color data.
2.  **Vertex Shader:** The vertex shader now receives 3D positions and colors. It applies the model, view, and projection transformations to the vertex positions and passes the colors to the fragment shader.
3.  **Fragment Shader:** The fragment shader receives the interpolated color and sets the fragment color accordingly.
4.  **Animation:** The `AnimationController` drives the `angle` value, which is used to create the model matrix with rotations around both the Y and X axes.

## Troubleshooting

*   **Cube is not visible:** Double-check your view matrix translation and your near/far clipping planes in the projection matrix. Make sure the cube is within the viewing frustum.
*   **Incorrect colors:** Verify that you've correctly defined the color data for each vertex in the `vertices` list. Ensure that the vertex shader is passing the color correctly to the fragment shader.
*   **Distorted or unexpected rotation:** Review your model matrix creation. Make sure you're using `vm.Matrix4.identity()` as a starting point and that you're applying the rotations in the desired order.

## What's Next?

In the next step, we'll optimize our rendering by implementing **back-face culling**. This technique will prevent the GPU from drawing triangles that are facing away from the camera, improving performance. Get ready to make your Flutter GPU application even more efficient!

# Step 10: Adding Back-Face Culling

In this step, we'll optimize our rendering by implementing **back-face culling**. This is a common technique in 3D graphics that avoids drawing triangles that are facing away from the camera, thus saving valuable GPU processing time.

## 10.1 What is Back-Face Culling?

In 3D graphics, the **winding order** of vertices in a triangle determines which side is considered the "front" and which side is the "back". By convention:

*   **Counter-clockwise (CCW) winding order:** Indicates the front face of the triangle.
*   **Clockwise (CW) winding order:** Indicates the back face of the triangle.

**Back-face culling** is a technique where the GPU automatically discards (culls) triangles whose back faces are facing the camera. Since we can't see the back faces anyway, there's no need to spend time rasterizing and shading them.

**Why is it useful?**

*   **Performance:** By not drawing hidden triangles, we reduce the workload on the GPU, leading to improved performance and potentially higher frame rates.
*   **Efficiency:** It's a simple yet effective optimization that's easy to implement.

## 10.2 Implementing Back-Face Culling in Flutter GPU

Flutter GPU makes it straightforward to enable back-face culling. We just need to add a single line of code to our `TrianglePainter.paint()` method.

Open `lib/main.dart` and add the following line within the `paint()` method, just after the `renderPass.bindPipeline(pipeline);` call:

```dart
renderPass.bindPipeline(pipeline);
renderPass.setCullMode(gpu.CullMode.backFace); // Add this line

final verticesView = gpu.BufferView(
  // ... rest of the method remains the same
```

That's it! We've enabled back-face culling.

Here's what this line does:

*   **`renderPass.setCullMode(gpu.CullMode.backFace);`:** This tells the GPU to cull triangles whose back faces are facing the camera. `gpu.CullMode.backFace` is an enum value that specifies that we want to cull the back faces.

## 10.3 Running the Application

Run the Flutter application again:

```console
$ flutter run
```

Visually, you might not notice a huge difference, especially with a simple scene like our rotating cube. However, the cube should now render with only the visible faces being rasterized. In more complex scenes with many objects and triangles, back-face culling can provide a significant performance boost.

**Explanation:**

1.  **Vertex Winding:** When we defined our cube's vertices, we ensured that each triangle's vertices were specified in counter-clockwise order when viewed from the outside of the cube. This established the front and back faces.
2.  **Cull Mode:** By setting the cull mode to `gpu.CullMode.backFace`, we instruct the GPU to check the winding order of each triangle after the vertex shader has executed and the transformations have been applied.
3.  **Culling:** If the triangle is facing away from the camera (i.e., its winding order is clockwise in screen space), the GPU discards it before rasterization. This means the fragment shader won't be executed for those pixels, saving processing time.

## Troubleshooting

*   **Parts of the cube are missing:** If you see unexpected holes or missing faces in your cube, double-check the winding order of your vertices. Make sure that each triangle's vertices are defined in counter-clockwise order when viewed from the outside.
*   **No noticeable performance improvement:** For very simple scenes, the performance gains from back-face culling might be negligible. However, in more complex scenes with many objects and triangles, it can make a significant difference.

## What's Next?

In the next step, we'll enhance our animation by rotating the cube around both the X and Y axes. This will create a more visually interesting and dynamic effect, further showcasing the power of 3D transformations in Flutter GPU.

# Step 11: Rotating in Two Dimensions

In this step, we'll enhance our animation by making the cube rotate around both the X and Y axes simultaneously. This will create a more complex and visually engaging rotation, showcasing the power of combining multiple 3D transformations.

## 11.1 Updating the Animation

We've already set up the foundation for this in our previous steps, so we just need to make a few small changes to our animation code.

Open `lib/main.dart` and locate the `_MainAppState` class. Update the `initState()` method and the `model` matrix creation in the `TrianglePainter.paint()` method as follows:

```dart
class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  // ...

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 30),
      vsync: this,
    )..repeat();

    _animation = Tween<double>(begin: 0, end: 4 * math.pi).animate(_controller);
  }

  // ...
```

```dart
  // ... Inside TrianglePainter.paint()
  final model = vm.Matrix4.identity()
    ..rotateY(angle)
    ..rotateX(angle / 2);
  // ...
```

Here's what we've changed:

*   **`initState()`:**
    *   `duration: const Duration(seconds: 30)`: We've slowed down the animation to 30 seconds per cycle, making it easier to observe the rotation.
    *   `_animation = Tween<double>(begin: 0, end: 4 * math.pi).animate(_controller);`: We've increased the animation range to `4 * math.pi`, which means the cube will make two full rotations (one full rotation is 2 * pi radians) around each axis during the 30-second animation.

*   **`TrianglePainter.paint()`:**
    *   `final model = vm.Matrix4.identity()..rotateY(angle)..rotateX(angle / 2);`
        *   We start with an identity matrix (`vm.Matrix4.identity()`).
        *   We apply a rotation around the Y-axis using `..rotateY(angle)`.
        *   We then apply a rotation around the X-axis using `..rotateX(angle / 2)`. We use `angle / 2` to make the X-axis rotation half the speed of the Y-axis rotation, creating a more interesting combined effect.

## 11.2 Running the Application

Run the Flutter application again:

```console
$ flutter run
```

You should now see the cube rotating around both the X and Y axes simultaneously. The combined rotation creates a more dynamic and visually appealing animation.

**Explanation:**

1.  **Animation:** The `AnimationController` produces a value (`angle`) that changes over time.
2.  **Model Matrix:** Each frame, we create a new model matrix that incorporates both the Y-axis and X-axis rotations based on the current `angle`.
3.  **Matrix Multiplication:** In the vertex shader, the model matrix is multiplied by the view and projection matrices, and the result is used to transform the vertex positions. The order of operations (rotate Y, then rotate X) is important and affects the final rotation.
4.  **Rendering:** The GPU renders the transformed cube, taking into account the combined rotations.

## Troubleshooting

*   **Unexpected rotation:** Double-check the order of your rotations in the `model` matrix creation. Make sure you're rotating around the Y-axis first and then the X-axis. Experiment with different rotation angles and speeds to see how they affect the animation.

## What's Next?

In the next and final step, we'll transition from using the low-level Flutter GPU APIs directly to using a higher-level library called `flutter_scene`. This library simplifies working with 3D scenes and models, making it easier to load, display, and manipulate 3D content in your Flutter applications. Get ready to explore a more convenient way to create 3D graphics in Flutter!


# Step 12: Using Flutter Scene to Load and Render a 3D Model

In this final step, we'll transition from the low-level Flutter GPU APIs to a higher-level library called `flutter_scene`. This library simplifies working with 3D scenes and models, making it easier to load, display, and manipulate 3D content in your Flutter applications. We'll replace our manually drawn cube with a 3D model loaded from a glTF (GL Transmission Format) asset.

## 12.1 Why `flutter_scene`?

`flutter_scene` provides a more convenient and efficient way to work with 3D graphics in Flutter. Here are some of its key advantages:

*   **Simplified Scene Management:** `flutter_scene` handles many of the complexities of 3D scene management, such as loading models, managing nodes, and setting up cameras.
*   **Model Loading:** It supports loading 3D models from various formats, including glTF, a popular and efficient format for web and mobile 3D graphics.
*   **Higher-Level Abstractions:** It provides higher-level abstractions over the low-level Flutter GPU APIs, making it easier to create and manipulate 3D scenes without needing to write as much boilerplate code.
*   **Animation Support:** `flutter_scene` has built-in support for skeletal animations, making it easy to animate 3D models.

## 12.2 Project Setup

First, we need to make some changes to our project's dependencies and asset management.

1.  **Remove `flutter_gpu` Dependencies:**

    Since we'll be using `flutter_scene`, we no longer need the `flutter_gpu` and `flutter_gpu_shaders` dependencies. Remove them by running the following command in your terminal:

    ```console
    $ flutter pub remove flutter_gpu flutter_gpu_shaders
    ```

2.  **Add `flutter_scene` Dependencies:**

    Add the `flutter_scene` and `flutter_scene_importer` packages to your project:

    ```console
    $ flutter pub add flutter_scene flutter_scene_importer
    ```

    *   `flutter_scene`: This is the core package for working with 3D scenes in Flutter.
    *   `flutter_scene_importer`: This package provides tools for importing 3D models, particularly glTF files, into a format that `flutter_scene` can use.

3.  **Update `pubspec.yaml`:**

    Open `pubspec.yaml` and make the following changes:

    *   Remove the `flutter_gpu` and `flutter_gpu_shaders` dependencies if they are still present in the `dependencies` section.
    *   Update the `assets` section to point to the `build/models/` directory instead of `build/shaderbundles/`:

    ```yaml
    flutter:
      uses-material-design: true

      assets:
        - build/models/
    ```

    Your `pubspec.yaml` should now look similar to this:

    ```yaml
    name: intro_flutter_gpu
    description: "A new Flutter project."
    publish_to: 'none'
    version: 0.1.0

    environment:
      sdk: ^3.7.0

    dependencies:
      flutter:
        sdk: flutter
      flutter_scene: ^0.7.0-0
      flutter_scene_importer: ^0.7.0-0
      native_assets_cli: ^0.9.0
      vector_math: ^2.1.4

    dev_dependencies:
      flutter_test:
        sdk: flutter
      flutter_lints: ^5.0.0

    flutter:
      uses-material-design: true

      assets:
        - build/models/
    ```

4.  **Remove Old Files:**

    Since we're no longer using our custom shaders or the `shaders.dart` file, you can delete the following:

    *   The `shaders` directory and its contents (`simple.vert` and `simple.frag`).
    *   The `lib/shaders.dart` file.
    *   The `my_first_triangle.shaderbundle.json` file.

## 12.3 Downloading the 3D Model

For this step, we'll use a 3D model from the Kenney Hexagon Kit asset pack. This is a free asset pack available under the CC0 license.

1.  **Download the Asset Pack:**

    Go to the Kenney Hexagon Kit page: [https://kenney.nl/assets/hexagon-kit](https://kenney.nl/assets/hexagon-kit)

    Click the "Download" button to download the asset pack.

2.  **Extract the Model:**

    Extract the downloaded ZIP file. Inside, you'll find a directory named `Models GLTF`, and within that, you'll find several `.glb` files.

    We'll use the `building-port.glb` file.

3.  **Place the Model in Your Project:**

    Create a new directory named `assets` in the root of your Flutter project. Copy the `building-port.glb` file into this `assets` directory.

## 12.4 Updating the Build Hook

We need to modify our `hook/build.dart` script to use `flutter_scene_importer` to process the glTF model instead of compiling shaders.

Open `hook/build.dart` and replace its content with the following:

```dart
import 'package:flutter_scene_importer/build_hooks.dart';
import 'package:native_assets_cli/native_assets_cli.dart';

void main(List<String> args) {
  build(args, (config, output) async {
    buildModels(
      buildConfig: config,
      inputFilePaths: ['assets/building-port.glb'],
    );
  });
}
```

Here's what we've changed:

*   **`import 'package:flutter_scene_importer/build_hooks.dart';`:** We're now importing the `build_hooks.dart` file from `flutter_scene_importer`.
*   **`buildModels(...)`:** We're calling the `buildModels` function to process our glTF model.
    *   `buildConfig: config`: We pass the build configuration.
    *   `inputFilePaths: ['assets/building-port.glb']`: We specify the path to our glTF model.

## 12.5 Rewriting `lib/main.dart` for `flutter_scene`

Now, let's completely rewrite our `lib/main.dart` file to use `flutter_scene`.

Replace the entire content of `lib/main.dart` with the following code:

```dart
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
```

Let's break down the code:

*   **`import` statements:**
    *   We've removed the `flutter_gpu` import and added `import 'package:flutter_scene/scene.dart' as scn;`.
*   **`MainApp`:**
    *   The constructor now takes a `staticResourcesInitialized` `Future` as a parameter. This `Future` represents the initialization of `flutter_scene`'s static resources.
    *   `scn.Scene.initializeStaticResources()` is called at the start of the `main` function. This is a one-time initialization needed for `flutter_scene` to function properly.
*   **`_MainAppState`:**
    *   We've kept the `AnimationController` and `_animation` for our camera movement.
    *   `final scene = scn.Scene();`: We create a `scn.Scene` object to hold our 3D scene.
    *   `scn.Node.fromAsset('build/models/building-port.model').then(...)`: We load our 3D model asynchronously using `scn.Node.fromAsset()`. This creates a `Node` (a basic element in a `flutter_scene` scene graph) from the imported model file. Once the model is loaded, we add it to the `scene`.
*   **`build()` method:**
    *   We've added a `FutureBuilder` to handle the asynchronous initialization of static resources. It displays a `CircularProgressIndicator` while waiting for the `staticResourcesInitialized` future to complete.
    *   The `AnimatedBuilder` now uses a `ScenePainter` to render the scene.
    *   `camera: scn.PerspectiveCamera(...)`: We create a `PerspectiveCamera` and set its position using the animation value. The camera orbits around the origin (0, 0, 0), where our model is located.
*   **`ScenePainter`:**
    *   This custom painter takes the `scn.Scene` and `scn.Camera` as parameters.
    *   `scene.render(camera, canvas, viewport: Offset.zero & size);`: This renders the scene using the provided camera onto the given canvas. The `viewport` is set to the full size of the canvas.

## 12.6 Running the Application

Run the Flutter application again:

```console
$ flutter run
```

You should now see the `building-port` 3D model rotating in the center of the screen! The camera will orbit around the model, providing a dynamic view of the scene.

**Explanation:**

1.  **Model Import:** The `hook/build.dart` script processes the `building-port.glb` file using `flutter_scene_importer` and generates a `.model` file in the `build/models` directory.
2.  **Scene Setup:** In `lib/main.dart`, we create a `scn.Scene` and load the model from the asset using `scn.Node.fromAsset()`.
3.  **Camera:** We create a `PerspectiveCamera` and animate its position to orbit around the model.
4.  **Rendering:** The `ScenePainter` uses the `scene.render()` method to render the scene using the camera's perspective onto the `CustomPaint` widget's canvas.

## Troubleshooting

*   **Model not loading:** Double-check that you've correctly downloaded the `building-port.glb` file and placed it in the `assets` directory. Ensure that `hook/build.dart` is correctly configured to process the model and that `pubspec.yaml` is pointing to the `build/models` directory for assets. Run `flutter clean` and then `flutter run` to ensure a clean build.
*   **Camera issues:** Experiment with the camera's `position` and `target` properties to adjust the view of the model.

## Conclusion

Congratulations! You've completed the "Introduction to Flutter GPU" codelab. You've journeyed from the basics of drawing a simple triangle with raw Flutter GPU APIs to loading and rendering a 3D model using the higher-level `flutter_scene` library.

Throughout this codelab, you've learned about:

*   **Fundamentals of GPU programming:** Vertex and fragment shaders, GLSL, storage modes, and basic rendering pipeline concepts.
*   **Flutter GPU APIs:** Textures, buffers, `RenderTarget`, `CommandBuffer`, `RenderPass`, and `RenderPipeline`.
*   **Drawing shapes:** Creating vertex data and drawing triangles.
*   **Color interpolation and UV mapping:** Controlling how colors are applied to surfaces.
*   **The Mandelbrot set:** Implementing a classic fractal in a fragment shader.
