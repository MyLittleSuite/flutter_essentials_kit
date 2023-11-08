import 'package:intl/intl.dart' as intl;

import 'flutter_essentials_kit_localizations.dart';

/// The translations for German (`de`).
class FlutterEssentialsKitLocalizationsDe extends FlutterEssentialsKitLocalizations {
  FlutterEssentialsKitLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get ruleConfirmed => 'Feld muss bestätigt werden';

  @override
  String get ruleEmail => 'Diese E-Mail scheint nicht gültig zu sein';

  @override
  String ruleMaxStringLength(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'Die Länge des Textes darf nicht länger als $max Zeichen sein',
      one: 'Die Länge des Textes darf nicht länger als $max Zeichen sein',
    );
    return '$_temp0';
  }

  @override
  String ruleMaxNumber(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'Der Wert der Zahl darf nicht größer als $max sein',
    );
    return '$_temp0';
  }

  @override
  String ruleMaxListLength(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'Die Größe der Liste darf nicht größer als $max sein',
    );
    return '$_temp0';
  }

  @override
  String ruleMinStringLength(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'Die Länge des Textes darf nicht weniger als $min Zeichen betragen',
      one: 'Die Länge des Textes darf nicht weniger als $min Zeichen betragen',
    );
    return '$_temp0';
  }

  @override
  String ruleMinNumber(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'Der Wert der Zahl darf nicht kleiner als $min sein',
    );
    return '$_temp0';
  }

  @override
  String ruleMinListLength(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'Die Größe der Liste darf nicht kleiner als $min sein',
    );
    return '$_temp0';
  }

  @override
  String get ruleRegex => 'Die Daten sind ungültig';

  @override
  String get ruleRequired => 'Dieses Feld wird benötigt';

  @override
  String get ruleSame => 'Die Felder stimmen nicht überein';

  @override
  String ruleSizeStringLength(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'Die Länge des Textes muss $size Zeichen betragen',
      one: 'Die Länge des Textes muss $size Zeichen sein',
    );
    return '$_temp0';
  }

  @override
  String ruleSizeNumber(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'Der Zahlenwert muss $size sein',
    );
    return '$_temp0';
  }

  @override
  String ruleSizeListLength(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'Die Größe der Liste muss $size sein',
    );
    return '$_temp0';
  }
}
