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
