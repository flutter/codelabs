---
name: codelab-rebuild
description: >-
  Guides the agent on using the `codelab_rebuild` CLI tool and authoring,
  debugging, and maintaining `codelab_rebuild.yaml` blueprint files in the
  Flutter codelabs repository. Use this skill whenever rebuilding codelabs,
  updating codelab steps for a new Flutter/Dart release, fixing broken patches
  in `codelab_rebuild.yaml`, or creating a new codelab blueprint.
---

# Codelab Rebuild & `codelab_rebuild.yaml` Maintenance

Codelabs in this repository are generated and maintained from declarative `codelab_rebuild.yaml` blueprints using the custom `codelab_rebuild` tool located in [`tooling/codelab_rebuild`](../../../tooling/codelab_rebuild).

Instead of manually editing generated `step_XX/` directories across a codelab, changes should be captured in the codelab's `codelab_rebuild.yaml` so the entire progression can be deterministically recreated against new Flutter/Dart releases.

---

## 1. Running `codelab_rebuild`

### Activate or Run the Tool
From the repository root, you can either activate the tool globally once:
```sh
dart pub global activate --source path tooling/codelab_rebuild
```
And invoke it on a blueprint:
```sh
codelab_rebuild <codelab_dir>/codelab_rebuild.yaml
```
Or run it directly via `dart run` from the repository root:
```sh
dart run tooling/codelab_rebuild/bin/codelab_rebuild.dart <codelab_dir>/codelab_rebuild.yaml
```

> **Note:** `codelab_rebuild` executes all steps with its working directory set to the **parent directory of the `codelab_rebuild.yaml` file** (e.g., `<codelab_dir>/`). All `path`, `mkdir`, `rmdir`, `copy`, and `copydir` values in the YAML are relative to that codelab directory.

---

## 2. Standard `codelab_rebuild.yaml` Architecture

A typical `codelab_rebuild.yaml` maintains a single scratch project directory (e.g., `<app_name>/`), incrementally evolves it from step to step, copies snapshots to `step_XX/` directories, and deletes the scratch directory at the end:

1. **Initial Step (e.g., `step_02` or `step_03`)**:
   - `rmdir: step_02` (removes the old generated step directory).
   - `flutter: create <app_name> ...` (creates a fresh Flutter project using the current SDK).
   - `strip-lines-containing: DEVELOPMENT_TEAM =` on `<app_name>/ios/Runner.xcodeproj/project.pbxproj`.
   - Configures `<app_name>/analysis_options.yaml` (usually `include: ../../analysis_options.yaml`).
   - Removes `<app_name>/README.md` (`rm`) and adds `.vscode/launch.json` and `.gemini/settings.json` via `mkdir` + `replace-contents`.
   - Adds dependencies via `flutter: pub add ...` and upgrades with `flutter: pub upgrade --major-versions`.
   - Populates initial source files and assets (`replace-contents`, `base64-contents`, or `patch-u`).
   - Optionally verifies builds (`flutter: clean`, platform-gated `flutter: build ...`).
   - Snapshots the working directory into the step folder:
     ```yaml
     - name: Copy step_02
       copydir:
         from: <app_name>
         to: step_02
     ```

2. **Subsequent Steps (`step_03`, `step_04`, ...)**:
   - `rmdir: step_XX` (cleans previous snapshot).
   - Applies incremental modifications to `<app_name>/...` using `patch-u` (for existing files) or `replace-contents` (for new or completely replaced files).
   - Runs code generation or build verification if needed (`dart: run build_runner ...`, `flutter: clean`, `flutter: build ...`).
   - Copies `<app_name>` to `step_XX` via `copydir`.

3. **Final Cleanup**:
   - Removes the temporary working directory (`rmdir: <app_name>`).

---

## 3. Maintaining & Debugging `codelab_rebuild.yaml`

For the complete list of supported YAML keys, types, and validation rules, read the [Blueprint Schema Reference](./references/blueprint-schema.md).

### Recovering from a Failed Rebuild
Each step in `codelab_rebuild.yaml` typically starts with `rmdir: step_XX`, which calls `deleteSync(recursive: true)` and throws a `PathNotFoundException` if `step_XX` does not exist on disk. When a rebuild fails mid-way through a step (after `rmdir: step_XX` has already run):
1. Recreate any missing `step_XX` directory before re-running (e.g., `mkdir -p <codelab_dir>/step_XX` or `git checkout -- <codelab_dir>/step_XX`).
2. Remove the leftover scratch project directory (`rm -rf <codelab_dir>/<app_name>`) so the next run starts from a clean state without leftover `.rej`/`.orig` patch artifacts.

### Adapting to `flutter create` Template Changes
When upgrading a codelab for a newer Flutter SDK, `flutter create` output may differ from when the blueprint was written:
- **`material_ui` default import and version constraint**: Recent Flutter SDKs include `material_ui` in `pubspec.yaml` and generate `import 'package:material_ui/material_ui.dart';` (instead of `import 'package:flutter/material.dart';`) in `lib/main.dart`, including with `flutter create --empty`. Update any initial `patch-u` hunks on `lib/main.dart` that still expect `package:flutter/material.dart`. However, **do not remove `material_ui` from `flutter: pub add ...`**: `flutter create` writes an older template constraint (e.g., `material_ui: ^1.1.0`) in `pubspec.yaml` even when `pubspec.lock` resolves to a newer version (e.g., `1.11.0`), and `flutter pub upgrade --major-versions` only bumps major version constraints, leaving `^1.1.0` in `pubspec.yaml`. Keeping `material_ui` in `flutter: pub add ...` (or running `flutter: pub upgrade --tighten`) ensures the `material_ui` constraint in `pubspec.yaml` is updated to the latest resolved version (e.g., `^1.11.0`) rather than downgraded.

### Incremental Debugging with `stop: true`
When a step fails (for example, a `patch-u` hunk no longer applies cleanly after a `flutter create` template change or package upgrade):
1. Insert a temporary stop step right before or after the failing step:
   ```yaml
   - name: Stop for debugging
     stop: true
   ```
2. Run `codelab_rebuild <codelab_dir>/codelab_rebuild.yaml`. The tool will execute up to that point and leave the `<app_name>/` scratch directory intact on disk.
3. Inspect the actual file in `<codelab_dir>/<app_name>/...`, make the desired edits, and generate a clean unified diff.
4. Remove the `stop: true` step once resolved.

### Generating `patch-u` Unified Diffs
Always prefer `patch-u` over `patch` or `patch-c`.
- To generate a unified diff for a modified file, use `git diff -U3` (or `diff -u`) between the prior state and the updated state, and paste the output under `patch-u: |`.
- Note that `codelab_rebuild` invokes `patch -u <fullPath>` directly on the target file specified by `path:`, so the `---` / `+++` header paths in the diff are ignored by `patch` in favor of `path:`, but keeping them accurate improves readability.
- If a file is small or changes almost entirely between steps, using `replace-contents: |` is often less brittle across Flutter SDK upgrades than `patch-u`.

### Encoding Binary Assets (`base64-contents`)
To embed fonts, images, or other binary files in `codelab_rebuild.yaml`, encode the file and wrap lines at 76 characters (note that `codelab_rebuild` strips all newlines before decoding, so wrapping is purely for YAML readability):
```sh
# Cross-platform (POSIX sh, macOS & Linux):
base64 < path/to/asset.png | fold -w 76

# Or using platform-specific flags:
base64 -b 76 < path/to/asset.png   # macOS (BSD base64)
base64 -w 76 < path/to/asset.png   # Linux (GNU base64; 76 is also the default)
```
Paste the multi-line base64 string into a step with `path` and `base64-contents: |`.

---

## 4. Verification Checklist

After rebuilding a codelab or modifying `tooling/codelab_rebuild`:

1. **If you modified `tooling/codelab_rebuild`**:
   - If `lib/src/blueprint.dart` changed, regenerate JSON serialization code:
     ```sh
     dart run build_runner build --delete-conflicting-outputs
     ```
     (run inside `tooling/codelab_rebuild`).
   - Run the tool's unit tests and analyzer inside `tooling/codelab_rebuild`:
     ```sh
     dart analyze
     dart test
     ```

2. **Verify the Rebuilt Codelab**:
   Match the checks in [`flutter_ci_script_shared.sh`](../../../flutter_ci_script_shared.sh) for every generated project in `<codelab_dir>`:
   - `flutter pub get`
   - `dart analyze --fatal-infos --fatal-warnings`
   - `dart format --output none --set-exit-if-changed lib` (and include `test` if a `test/` directory exists; note that `flutter create --empty` omits `test/`)
   - `flutter test` (or `dart test` for pure Dart projects, if a `test/` directory exists)
   - Ensure `git status` shows no leftover scratch directory (e.g., `<app_name>/` was cleaned up by the final step).
