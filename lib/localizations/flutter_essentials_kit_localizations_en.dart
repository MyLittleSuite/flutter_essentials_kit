import 'package:intl/intl.dart' as intl;

import 'flutter_essentials_kit_localizations.dart';

/// The translations for English (`en`).
class FlutterEssentialsKitLocalizationsEn extends FlutterEssentialsKitLocalizations {
  FlutterEssentialsKitLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get ruleConfirmed => 'This field must be confirmed';

  @override
  String get ruleEmail => 'This email seems to be not valid';

  @override
  String ruleMaxStringLength(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'The text length can\'t be greater than $max characters',
      one: 'The text length can\'t be greater than $max character',
    );
    return '$_temp0';
  }

  @override
  String ruleMaxNumber(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'The number can\'t be greater than $max',
    );
    return '$_temp0';
  }

  @override
  String ruleMaxListLength(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'The list length can\'t be greater than $max',
    );
    return '$_temp0';
  }

  @override
  String ruleMinStringLength(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'The text length can\'t be less than $min characters',
      one: 'The text length can\'t be less than $min character',
    );
    return '$_temp0';
  }

  @override
  String ruleMinNumber(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'The number can\'t be less than $min',
    );
    return '$_temp0';
  }

  @override
  String ruleMinListLength(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'The list length can\'t be less than $min',
    );
    return '$_temp0';
  }

  @override
  String get ruleRegex => 'This value is not valid';

  @override
  String get ruleRequired => 'This field is required';

  @override
  String get ruleSame => 'The fields are not the same';

  @override
  String ruleSizeStringLength(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'The text length must be $size characters',
      one: 'The text length must be $size character',
    );
    return '$_temp0';
  }

  @override
  String ruleSizeNumber(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'The number must be $size',
    );
    return '$_temp0';
  }

  @override
  String ruleSizeListLength(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'The list length must be $size',
    );
    return '$_temp0';
  }
}
