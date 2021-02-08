
// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'flutter_essentials_kit_localizations.dart';

// ignore_for_file: unnecessary_brace_in_string_interps

/// The translations for English (`en`).
class FlutterEssentialsKitLocalizationsEn extends FlutterEssentialsKitLocalizations {
  FlutterEssentialsKitLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get ruleConfirmed => 'This field must be confirmed';

  @override
  String get ruleEmail => 'This email seems to be not valid';

  @override
  String ruleMaxStringLength(int max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      one: 'The text length can\'t be greater than ${max} character',
      other: 'The text length can\'t be greater than ${max} characters',
    );
  }

  @override
  String ruleMaxNumber(int max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'The number can\'t be greater than ${max}',
    );
  }

  @override
  String ruleMaxListLength(int max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'The list length can\'t be greater than ${max}',
    );
  }

  @override
  String ruleMinStringLength(int min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      one: 'The text length can\'t be less than ${min} character',
      other: 'The text length can\'t be less than {max',
    );
  }

  @override
  String ruleMinNumber(int min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'The number can\'t be less than ${min}',
    );
  }

  @override
  String ruleMinListLength(int min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'The list length can\'t be less than ${min}',
    );
  }

  @override
  String get ruleRegex => 'This value is not valid';

  @override
  String get ruleRequired => 'This field is required';

  @override
  String get ruleSame => 'The fields are not the same';

  @override
  String ruleSizeStringLength(int size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      one: 'The text length must be ${size} character',
      other: 'The text length must be ${size} characters',
    );
  }

  @override
  String ruleSizeNumber(int size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'The number must be ${size}',
    );
  }

  @override
  String ruleSizeListLength(int size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'The list length must be ${size}',
    );
  }
}
