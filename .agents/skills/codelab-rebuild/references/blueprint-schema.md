# Blueprint Schema Reference (`codelab_rebuild.yaml`)

The `codelab_rebuild` tool parses `codelab_rebuild.yaml` using `package:checked_yaml` and `package:json_serializable` with `disallowUnrecognizedKeys: true` (`tooling/codelab_rebuild/lib/src/blueprint.dart`). Unrecognized keys or invalid combinations will fail blueprint validation before any step runs.

## Top-Level Blueprint Object

| Key | Type | Required | Description |
| :--- | :--- | :--- | :--- |
| `name` | `String` | Yes | Non-empty name of the rebuild script, logged at startup. |
| `steps` | `List<BlueprintStep>` | Yes | Ordered list of top-level steps to execute. |

---

## `BlueprintStep` Object

Every step requires a non-empty `name`. A step must either:
1. Contain a `steps` list of sub-steps (and **no** other action keys), OR
2. Contain a valid action (or `stop: true`).

### Common Modifiers

| Key | Type | Description |
| :--- | :--- | :--- |
| `name` | `String` | **Required.** Logged when the step starts. Used to identify failing steps. |
| `steps` | `List<BlueprintStep>` | Nested sub-steps. Cannot be combined with any action keys on the same step. |
| `path` | `String` | Relative path (from the directory containing `codelab_rebuild.yaml`). Acts as the target file path for file-content operations (`replace-contents`, `base64-contents`, `patch*`, `retrieve-url`, `strip-lines-containing`), the working directory for CLI commands (`flutter`, `dart`, `git`, `pod`, `tar`, `7z`, `protoc`), or a base directory prefix for filesystem operations (`mkdir`, `rmdir`, `copy`, `copydir`, `rename`, `renamedir`, `rm`). |
| `platforms` | `List<String>` | Restricts execution to matching `Platform.operatingSystem` values (`macos`, `linux`, `windows`). Useful for platform-specific `flutter build` or `pod` commands. |
| `stop` | `bool` | If `true`, immediately logs `Stopping.` and exits with code `0`. Used while iteratively authoring or debugging a blueprint. |

---

### Filesystem Operations

Paths are resolved relative to the `codelab_rebuild.yaml` parent directory (or `path`, if specified on the step).

| Key | Type | Description |
| :--- | :--- | :--- |
| `mkdir` | `String` | Creates a single directory (recursively). |
| `mkdirs` | `List<String>` | Creates multiple directories (recursively). |
| `rmdir` | `String` | Recursively deletes a directory. |
| `rmdirs` | `List<String>` | Recursively deletes multiple directories. |
| `rm` | `String` | Deletes a single file. Fails and exits if the file does not exist. |
| `copy` | `{from: String, to: String}` | Copies a single file from `from` to `to`. |
| `copydir` | `{from: String, to: String}` | Recursively copies a directory from `from` to `to` (e.g., snapshotting the working project into `step_03`). |
| `rename` | `{from: String, to: String}` | Renames/moves a file from `from` to `to`. |
| `renamedir` | `{from: String, to: String}` | Renames/moves a directory from `from` to `to`. |

---

### File Content Creation & Modification

All keys in this section **require** `path` to be set to the target file's relative path.

| Key | Type | Description |
| :--- | :--- | :--- |
| `replace-contents` | `String` | Writes (or overwrites) the file at `path` with the given string. Creates the file if it does not exist. |
| `base64-contents` | `String` | Strips newlines, base64-decodes the string, and writes the raw bytes to `path` (used for images, fonts, or binary assets). |
| `patch-u` | `String` | Applies a unified diff (`patch -u <fullPath>`) via stdin. Creates the target file first if it doesn't exist. **Preferred patch format** (matches `git diff` output). |
| `patch-c` | `String` | Applies a context diff (`patch -c <fullPath>`) via stdin. |
| `patch` | `String` | Applies a normal diff (`patch <fullPath>`) via stdin. |
| `strip-lines-containing` | `String` | Reads the file at `path`, removes any line containing the substring, and writes the file back (commonly used to remove `DEVELOPMENT_TEAM =` from `project.pbxproj`). |

> **Validation Rules for Patches:**
> - Only one of `patch`, `patch-u`, or `patch-c` may be specified per step.
> - A patch step cannot be combined with `replace-contents`, `base64-contents`, filesystem operations, or CLI commands on the same step.
> - Any stderr output or non-zero exit code from `patch` causes `codelab_rebuild` to fail immediately (`exit(-1)`).

---

### CLI & Archive Commands

Runs the specified executable in a shell (`runInShell: true`), splitting arguments with `io.shellSplit`. If `path` is provided, it is used as the working directory (note: `tar` and `7z` validation require `path` to be set).

| Key | Type | Fails on `stderr`? | Description |
| :--- | :--- | :--- | :--- |
| `flutter` | `String` | No (exit code only) | Runs `flutter <args>` (e.g., `create`, `pub add`, `pub upgrade --major-versions`, `clean`, `build`). |
| `dart` | `String` | **Yes** | Runs `dart <args>` (e.g., `run build_runner build --delete-conflicting-outputs`, `format`, `analyze`). |
| `git` | `String` | No (exit code only) | Runs `git <args>`. |
| `pod` | `String` | No (exit code only) | Runs `pod <args>` (e.g., `update` in `ios/`). |
| `tar` | `String` | **Yes** | Runs `tar <args>` in `path` (requires `path`). |
| `7z` | `String` | **Yes** | Runs `7z <args>` in `path` (requires `path`). |
| `protoc` | `{proto: String, output: String}` | **Yes** | Runs `protoc -I./ <proto> --dart_out=<output>` in `path` (requires `path`). |
| `retrieve-url` | `String` | N/A | Downloads the HTTP/HTTPS URL directly to the file at `path` (requires `path`). |

---

### Xcode & macOS Runner Maintenance

| Key | Type | Requirements | Description |
| :--- | :--- | :--- | :--- |
| `xcode-project-path` | `String` | Required by the 4 `xcode-*` / `*-deployment-target` keys below | Path to `.xcodeproj` bundle (e.g., `app/ios/Runner.xcodeproj`). |
| `xcode-add-source-file` | `String` | Requires `xcode-project-path` | Uses Ruby `xcodeproj` gem to add a source file to `Runner` group and target. |
| `xcode-add-resource` | `String` | Requires `xcode-project-path` | Uses Ruby `xcodeproj` gem to add a resource file to `Runner` group and target. |
| `iphoneos-deployment-target` | `String` | Requires `xcode-project-path` | Sets `IPHONEOS_DEPLOYMENT_TARGET` across all targets/build configurations in the Xcode project. |
| `macosx-deployment-target` | `String` | Requires `xcode-project-path` | Sets `MACOSX_DEPLOYMENT_TARGET` across all targets/build configurations in the Xcode project. |
| `full-screen-macos-main-menu-xib` | `String` | Path to `MainMenu.xib` (relative to `cwd` or `path`) | Modifies the macOS `MainMenu.xib` XML so the window uses `titlebarAppearsTransparent="YES"`, `titleVisibility="hidden"`, and `fullSizeContentView="YES"`. |
