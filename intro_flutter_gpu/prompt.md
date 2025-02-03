I'd like to create a codelab for introducing medium level Flutter developers to the new
Flutter GPU APIs exposed in Flutter's Impeller on Android, iOS, Windows, macOS and Linux.

# Codelab content

The codelab is called "Introduction to Flutter GPU". The codelab is made up of a series of steps.

This codelab requires Flutter version 3.30, which comes with Dart 3.8.

## Step 1. Single Green Triange

Create the empty Flutter application for the supported platforms

```console
$ flutter create --empty intro_flutter_gpu --platforms android,ios,macos,windows,linux
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
  sdk: ^3.8.0

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
    // Create a texture to render to
    final texture = gpu.gpuContext.createTexture(
      gpu.StorageMode.devicePrivate,
      size.width.ceil(),
      size.height.ceil(),
    );

    // Create a render target for the texture
    final renderTarget = gpu.RenderTarget.singleColor(
      gpu.ColorAttachment(texture: texture),
    );

    // Create a command buffer and render pass
    final commandBuffer = gpu.gpuContext.createCommandBuffer();
    final renderPass = commandBuffer.createRenderPass(renderTarget);

    // Load our shaders
    final vert = shaderLibrary['SimpleVertex'];
    if (vert == null) {
      throw Exception('Failed to load SimpleVertex vertex shader');
    }

    final frag = shaderLibrary['SimpleFragment'];
    if (frag == null) {
      throw Exception('Failed to load SimpleFragment fragment shader');
    }

    // Create the rendering pipeline
    final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);

    // Define our triangle vertices
    const floatsPerVertex = 2;
    final vertices = Float32List.fromList([-0.5, -0.5, 0.5, -0.5, 0.0, 0.5]);

    // Create a GPU buffer for our vertices
    final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
      ByteData.sublistView(vertices),
    );

    // Bind the pipeline and vertex buffer
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

    // Draw the triangle
    renderPass.draw();

    // Submit commands to GPU and render to screen
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
@@ -33,23 +33,19 @@ class TrianglePainter extends CustomPainter {
 
   @override
   void paint(Canvas canvas, Size size) {
-    // Create a texture to render to
     final texture = gpu.gpuContext.createTexture(
       gpu.StorageMode.devicePrivate,
       size.width.ceil(),
       size.height.ceil(),
     );
 
-    // Create a render target for the texture
     final renderTarget = gpu.RenderTarget.singleColor(
       gpu.ColorAttachment(texture: texture),
     );
 
-    // Create a command buffer and render pass
     final commandBuffer = gpu.gpuContext.createCommandBuffer();
     final renderPass = commandBuffer.createRenderPass(renderTarget);
 
-    // Load our shaders
     final vert = shaderLibrary['SimpleVertex'];
     if (vert == null) {
       throw Exception('Failed to load SimpleVertex vertex shader');
@@ -60,19 +56,20 @@ class TrianglePainter extends CustomPainter {
       throw Exception('Failed to load SimpleFragment fragment shader');
     }
 
-    // Create the rendering pipeline
     final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);
 
-    // Define our triangle vertices
-    const floatsPerVertex = 2;
-    final vertices = Float32List.fromList([-0.5, -0.5, 0.5, -0.5, 0.0, 0.5]);
+    const floatsPerVertex = 5; // Now 2 for position + 3 for color
+    final vertices = Float32List.fromList([
+      // Format: x, y, r, g, b
+      -0.5, -0.5, 1.0, 0.0, 0.0,
+      0.5, -0.5, 0.0, 1.0, 0.0,
+      0.0, 0.5, 0.0, 0.0, 1.0,
+    ]);
 
-    // Create a GPU buffer for our vertices
     final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
       ByteData.sublistView(vertices),
     );
 
-    // Bind the pipeline and vertex buffer
     renderPass.bindPipeline(pipeline);
 
     final verticesView = gpu.BufferView(
@@ -85,10 +82,8 @@ class TrianglePainter extends CustomPainter {
       vertices.length ~/ floatsPerVertex,
     );
 
-    // Draw the triangle
     renderPass.draw();
 
-    // Submit commands to GPU and render to screen
     commandBuffer.submit();
     final image = texture.asImage();
     canvas.drawImage(image, Offset.zero, Paint());
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
@@ -58,12 +58,18 @@ class TrianglePainter extends CustomPainter {
 
     final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);
 
-    const floatsPerVertex = 5; // Now 2 for position + 3 for color
+    const floatsPerVertex = 5;
     final vertices = Float32List.fromList([
       // Format: x, y, r, g, b
+
+      // Triangle #1
       -0.5, -0.5, 1.0, 0.0, 0.0,
       0.5, -0.5, 0.0, 1.0, 0.0,
-      0.0, 0.5, 0.0, 0.0, 1.0,
+      -0.5, 0.5, 0.0, 0.0, 1.0,
+      // Triangle #2
+      0.5, -0.5, 0.0, 1.0, 0.0,
+      0.5, 0.5, 1.0, 1.0, 0.0,
+      -0.5, 0.5, 0.0, 0.0, 1.0,
     ]);
 
     final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
```

## Step 4. Two triangles with broken color interpolation

Update `lib/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_04/lib/main.dart
+++ a/intro_flutter_gpu/step_04/lib/main.dart
@@ -63,13 +63,13 @@ class TrianglePainter extends CustomPainter {
       // Format: x, y, r, g, b
 
       // Triangle #1
-      -0.5, -0.5, 1.0, 0.0, 0.0,
-      0.5, -0.5, 0.0, 1.0, 0.0,
-      -0.5, 0.5, 0.0, 0.0, 1.0,
+      -0.5, -0.5, 0.0, 0.0, 1.0,
+      0.5, -0.5, 1.0, 1.0, 0.0,
+      -0.5, 0.5, 1.0, 0.0, 0.0,
       // Triangle #2
-      0.5, -0.5, 0.0, 1.0, 0.0,
-      0.5, 0.5, 1.0, 1.0, 0.0,
-      -0.5, 0.5, 0.0, 0.0, 1.0,
+      0.5, -0.5, 1.0, 1.0, 0.0,
+      0.5, 0.5, 0.0, 1.0, 0.0,
+      -0.5, 0.5, 1.0, 0.0, 0.0,
     ]);
 
     final verticesDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
```

## Step 5. Introduce UV to fix color interpolation

Update `lib/main.dart` as follows

```diff
--- b/intro_flutter_gpu/step_05/lib/main.dart
+++ a/intro_flutter_gpu/step_05/lib/main.dart
@@ -58,18 +58,18 @@ class TrianglePainter extends CustomPainter {
 
     final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);
 
-    const floatsPerVertex = 5;
+    const floatsPerVertex = 4; // Now 2 for position + 2 for UV
     final vertices = Float32List.fromList([
-      // Format: x, y, r, g, b
+      // Format: x, y, u, v
 
       // Triangle #1
-      -0.5, -0.5, 0.0, 0.0, 1.0,
-      0.5, -0.5, 1.0, 1.0, 0.0,
-      -0.5, 0.5, 1.0, 0.0, 0.0,
+      -0.5, -0.5, 0.0, 0.0,
+      0.5, -0.5, 1.0, 0.0,
+      -0.5, 0.5, 0.0, 1.0,
       // Triangle #2
-      0.5, -0.5, 1.0, 1.0, 0.0,
-      0.5, 0.5, 0.0, 1.0, 0.0,
-      -0.5, 0.5, 1.0, 0.0, 0.0,
+      0.5, -0.5, 1.0, 0.0,
+      0.5, 0.5, 1.0, 1.0,
+      -0.5, 0.5, 0.0, 1.0,
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
@@ -58,18 +58,18 @@ class TrianglePainter extends CustomPainter {
 
     final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);
 
-    const floatsPerVertex = 4; // Now 2 for position + 2 for UV
+    const floatsPerVertex = 4; // 2 for position + 2 for UV
     final vertices = Float32List.fromList([
       // Format: x, y, u, v
 
       // Triangle #1
-      -0.5, -0.5, 0.0, 0.0,
-      0.5, -0.5, 1.0, 0.0,
-      -0.5, 0.5, 0.0, 1.0,
+      -0.8, -0.8, -1.0, -1.0,
+      0.8, -0.8, 1.0, -1.0,
+      -0.8, 0.8, -1.0, 1.0,
       // Triangle #2
-      0.5, -0.5, 1.0, 0.0,
-      0.5, 0.5, 1.0, 1.0,
-      -0.5, 0.5, 0.0, 1.0,
+      0.8, -0.8, 1.0, -1.0,
+      0.8, 0.8, 1.0, 1.0,
+      -0.8, 0.8, -1.0, 1.0,
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
+            animation: _animation,
+            builder: (context, child) {
+              return CustomPaint(
+                painter: TrianglePainter(angle: _animation.value),
+              );
+            },
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
@@ -58,15 +95,12 @@ class TrianglePainter extends CustomPainter {
 
     final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);
 
-    const floatsPerVertex = 4; // 2 for position + 2 for UV
+    const floatsPerVertex = 4;
     final vertices = Float32List.fromList([
       // Format: x, y, u, v
-
-      // Triangle #1
       -0.8, -0.8, -1.0, -1.0,
       0.8, -0.8, 1.0, -1.0,
       -0.8, 0.8, -1.0, 1.0,
-      // Triangle #2
       0.8, -0.8, 1.0, -1.0,
       0.8, 0.8, 1.0, 1.0,
       -0.8, 0.8, -1.0, 1.0,
@@ -76,6 +110,18 @@ class TrianglePainter extends CustomPainter {
       ByteData.sublistView(vertices),
     );
 
+    // Create model matrix for rotation
+    final model = vm.Matrix4.rotationY(angle);
+
+    // Create uniform buffer with transformation matrix
+    final vertUniforms = [model];
+
+    final vertUniformsDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
+      ByteData.sublistView(
+        Float32List.fromList(vertUniforms.expand((m) => m.storage).toList()),
+      ),
+    );
+
     renderPass.bindPipeline(pipeline);
 
     final verticesView = gpu.BufferView(
@@ -88,6 +134,14 @@ class TrianglePainter extends CustomPainter {
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
@@ -110,11 +110,18 @@ class TrianglePainter extends CustomPainter {
       ByteData.sublistView(vertices),
     );
 
-    // Create model matrix for rotation
+    // Create transformation matrices
     final model = vm.Matrix4.rotationY(angle);
+    final view = vm.Matrix4.translation(vm.Vector3(0.0, 0.0, -2.0));
+    final projection = vm.makePerspectiveMatrix(
+      vm.radians(45),
+      size.aspectRatio,
+      0.1,
+      100.0,
+    );
 
-    // Create uniform buffer with transformation matrix
-    final vertUniforms = [model];
+    // Pack matrices into uniform buffer
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
@@ -95,22 +95,63 @@ class TrianglePainter extends CustomPainter {
 
     final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);
 
-    const floatsPerVertex = 4;
+    const floatsPerVertex = 6; // 3 for position + 3 for color
     final vertices = Float32List.fromList([
-      // Format: x, y, u, v
-      -0.8, -0.8, -1.0, -1.0,
-      0.8, -0.8, 1.0, -1.0,
-      -0.8, 0.8, -1.0, 1.0,
-      0.8, -0.8, 1.0, -1.0,
-      0.8, 0.8, 1.0, 1.0,
-      -0.8, 0.8, -1.0, 1.0,
+      // Format: x, y, z, r, g, b
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
       ByteData.sublistView(vertices),
     );
 
-    // Create transformation matrices
     final model = vm.Matrix4.rotationY(angle);
     final view = vm.Matrix4.translation(vm.Vector3(0.0, 0.0, -2.0));
     final projection = vm.makePerspectiveMatrix(
@@ -120,7 +161,6 @@ class TrianglePainter extends CustomPainter {
       100.0,
     );
 
-    // Pack matrices into uniform buffer
     final vertUniforms = [model, view, projection];
 
     final vertUniformsDeviceBuffer = gpu.gpuContext.createDeviceBufferWithCopy(
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
@@ -95,7 +95,7 @@ class TrianglePainter extends CustomPainter {
 
     final pipeline = gpu.gpuContext.createRenderPipeline(vert, frag);
 
-    const floatsPerVertex = 6; // 3 for position + 3 for color
+    const floatsPerVertex = 6;
     final vertices = Float32List.fromList([
       // Format: x, y, z, r, g, b
 
@@ -171,6 +171,9 @@ class TrianglePainter extends CustomPainter {
 
     renderPass.bindPipeline(pipeline);
 
+    // Add back-face culling
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
@@ -152,8 +152,15 @@ class TrianglePainter extends CustomPainter {
       ByteData.sublistView(vertices),
     );
 
-    final model = vm.Matrix4.rotationY(angle);
-    final view = vm.Matrix4.translation(vm.Vector3(0.0, 0.0, -2.0));
+    // Create model matrix with multiple rotations
+    final model =
+        vm.Matrix4.identity()
+          ..rotateY(angle)
+          ..rotateX(angle / 2);
+
+    // Move camera back a bit more for better view
+    final view = vm.Matrix4.translation(vm.Vector3(0.0, 0.0, -2.5));
+
     final projection = vm.makePerspectiveMatrix(
       vm.radians(45),
       size.aspectRatio,
@@ -171,7 +178,6 @@ class TrianglePainter extends CustomPainter {
 
     renderPass.bindPipeline(pipeline);
 
-    // Add back-face culling
     renderPass.setCullMode(gpu.CullMode.backFace);
 
     final verticesView = gpu.BufferView(
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
*   Assume the developers understand Flutter programming.
*   Assume the developers are seeing 3D programming for the first time.

**4. Testing and Validation:**

*   The codelab code is tested under CI on Github.com
*   This code requires Flutter version 3.30 to have the required APIs exposed from `flutter_gpu`
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
    *   No diagrams are required


Notes
  - You do not need to run `dart run hook/build.dart` as this is automatically handled by the `native_assets_cli` infrastructure.
  - Do not mention triangle strips. Flutter GPU does not support them.

**Title:** Introduction to Flutter GPU

**Target Audience:** Intermediate Flutter developers with little to no experience in 3D graphics programming.

**Prerequisites:**

*   Flutter SDK version 3.30 or later.
*   Basic understanding of Flutter development (Widgets, layouts, state management).
*   Familiarity with the command-line interface.

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

**Supported Platforms**

* This codelab will target iOS, Android, macOS, Windows and Linux.
* Impeller is the default engine for iOS.
* Impeller is available on Android for newer devices.
* Impeller is available behind a flag on macOS, Windows and Linux.

