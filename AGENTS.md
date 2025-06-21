**AGENTS.md**

Project conventions for any AI-generated commits in *Basketball GM*:

---

Coding

* Use package imports (`import 'package:basketball_manager/...';`). Avoid `../../` relative paths except inside `test/`.
* All Dart is null-safe; do not add `// ignore_for_file` unless absolutely required.
* Run `dart format .` and keep `flutter analyze` at zero warnings.
* Attach `json_serializable`, `hive_generator`, etc., and run `dart run build_runner build --delete-conflicting-outputs` before committing.

Assets

* Put images under `assets/images`, `assets/logos`, or `assets/avatars` and list them in `pubspec.yaml`.
* Filenames are lower-snake case or UPPER\_TAG (example: `NEO.png`, `avatar_01.png`).

Tests

* Provide at least one unit test for every bloc, use-case, or service.
* Widget screens need a smoke test that pumps the widget without errors.

Commit messages

* Start with **feat**, **fix**, **chore**, **refactor**, **test**, or **docs**.
* Keep the subject line under 72 characters (`feat(ui): add TeamSelectionHub`).
* No generated `.g.dart` or `build/` artifacts in the repo.

CI

* Make sure `flutter analyze --fatal-warnings --fatal-infos` and `flutter test --coverage` pass before opening a PR.

Add new rules here as the project grows.
