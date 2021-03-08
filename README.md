# flutter_essentials_kit
A kit of useful functions and widget to speed up development.

[![Pub](https://img.shields.io/pub/v/flutter_essentials_kit.svg)](https://pub.dev/packages/flutter_essentials_kit)
![Dart CI](https://github.com/MyLittleSuite/flutter_essentials_kit/workflows/Dart%20CI/badge.svg)
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

MaterialApp(
  localizationsDelegates: [
    // ...
    FlutterEssentialsKitLocalizations.delegate,
    // ...
);
```

## Docs
* [errors](mds/errors.md)
* [exceptions](mds/exceptions.md)
* [extensions](mds/extensions.md)
* [misc](mds/misc.md)
* [widgets](mds/widgets.md)
