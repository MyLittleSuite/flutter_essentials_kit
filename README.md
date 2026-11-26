# flutter_essentials_kit
A kit of useful functions and widget to speed up development.

[![Pub](https://img.shields.io/pub/v/flutter_essentials_kit.svg)](https://pub.dev/packages/flutter_essentials_kit)
![Flutter CI](https://github.com/MyLittleSuite/flutter_essentials_kit/workflows/Flutter%20CI/badge.svg)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

## Getting Started
Add this to your package's `pubspec.yaml` file:
```
dependencies:
  flutter_essentials_kit:
```

## Usage
Just use this import to use the package:
```
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
```

Plug the localization class in your `localizationsDelegates`.
```dart
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:material_ui/material_ui.dart';

MaterialApp(
  localizationsDelegates: [
    FlutterEssentialsKitLocalizations.delegate,
    ...GlobalMaterialLocalizations.delegates,
  ],
);
```

## Requirements
Since version 3.0.0 this package relies on [`material_ui`](https://pub.dev/packages/material_ui) instead of
`package:flutter/material.dart`, which requires Dart `^3.13.0` and Flutter `>=3.47.0`.
Your app should also depend on `material_ui` and use `GlobalMaterialLocalizations.delegates` from it.
To migrate your own code run `dart fix --apply --code=migrate_design_widgets`.

## Docs
* [errors](mds/errors.md)
* [exceptions](mds/exceptions.md)
* [extensions](mds/extensions.md)
* [misc](mds/misc.md)
* [widgets](mds/widgets.md)
