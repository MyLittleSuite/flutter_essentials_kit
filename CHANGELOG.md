## NEXT

## 3.0.0
* **BREAKING**: Migrated from `package:flutter/material.dart` to `package:material_ui/material_ui.dart`, following the Flutter 3.50 deprecation of the built-in Material and Cupertino libraries.
* **BREAKING**: Raised the minimum requirements to Dart `^3.13.0` and Flutter `>=3.47.0`, as required by `material_ui`.
* **BREAKING**: `FlutterEssentialsKitLocalizations.localizationsDelegates` now uses `GlobalMaterialLocalizations.delegates` from `material_ui` instead of the deprecated `GlobalMaterialLocalizations`, `GlobalCupertinoLocalizations` and `GlobalWidgetsLocalizations` from `flutter_localizations`. Apps must depend on `material_ui` and migrate their own delegates too (`dart fix --apply --code=migrate_design_widgets`).
* Added `material_ui` dependency.

## 2.9.1
* Bumped dependencies
* Added `RepositoryError`.

## 2.9.0
* Bumped dependencies
* Added `firstDayOfWeek` and `lastDayOfWeek` in `DateTime` extensions.

## 2.8.0
* Bumped dependencies
* Replaced `Container` with `SizedBox` in `Spacing`.

## 2.7.0
* Bumped dependencies

## 2.6.0
* Bumped dependencies

## 2.5.0
* Add `es` translation.
* Create new page Localizations in example project.

## 2.4.0
* Bumped dependencies and added support to Dart 3.

## 2.3.5
* Fix broken sync value in `TwoWayBinding`.

## 2.3.4
* Enhance `endOfDay` in `DateTime` extensions.

## 2.3.3
* Enhance validation pipeline in `TwoWayBindingUtils.validate`.
* Add `TwoWayBindingUtils.validate` initial value.
* Coding cleanup in `TwoWayBinding`.

## 2.3.2
* Restore `onErrorReturn(false)` and replay last value in `TwoWayBindingUtils.validate`.

## 2.3.1
* Remove `onErrorReturn(false)` from `TwoWayBindingUtils.validate`.

## 2.3.0
* Bump `rxdart` to ^0.27.4.
* Enhance implementation of `TwoWayBinding`, adding a standard function to validate bindings.

## 2.2.1
* Fix missing set internal value in `TwoWayBinding`.

## 2.2.0
* Add `LowerCaseRule` and `UpperCaseRule` as new rules.
* Update rxdart to 0.27.3.
* Update min dart sdk to 2.16.0.
* Update code for Flutter 3.0.0.

## 2.1.1
* Fix stream broadcast in `bindDataRule2`.

## 2.1.0
* Add support of let (kotlin function).
* Add support of leading widget in CourtesyWidget, with apdding and margin customizations.
* Fix type cast of error in TwoWayBindingBuilder.

## 2.0.0
* Add support of TrimRule.
* Add support of some operations on Iterable<num>.

## 2.0.0-dev.0
* Add support for null safety and Flutter 2.

## 1.4.0
* Add textColorBasedOnLuminance to calculate the correct text color, based on the background one.
* Add groupBy on Iterable.
* Add nextYear, previousYear, onlyDate, onlyTime in DateTime extension.

## 1.3.0
* Add TwoWayBinding
* Add Spacing widget
* Add DataRules to validate forms.
* Add Localized abstract class to translate user messages.
* Add LocalizedError abstract class to translate user error messages.
* Add LocalizedException abstract class to translate user error messages.
* Add DateTimeOperations extension on DateTime, which contains some common operations on DateTime.

## 1.2.0
* Remove MarqueeWidget.

## 1.1.2
* Fix wrong error disposing MarqueeWidget.

## 1.1.1
* Fix missing export for MarqueeWidget.

## 1.1.0
* Create MarqueeWidget.

## 1.0.0
* Create CourtesyWidget.
* Add `filterNull()` on **Iterable** extension.
