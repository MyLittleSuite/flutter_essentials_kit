

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
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      one: 'Die Länge des Textes darf nicht länger als $max Zeichen sein',
      other: 'Die Länge des Textes darf nicht länger als $max Zeichen sein',
    );
  }

  @override
  String ruleMaxNumber(num max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'Der Wert der Zahl darf nicht größer als $max sein',
    );
  }

  @override
  String ruleMaxListLength(num max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'Die Größe der Liste darf nicht größer als $max sein',
    );
  }

  @override
  String ruleMinStringLength(num min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      one: 'Die Länge des Textes darf nicht weniger als $min Zeichen betragen',
      other: 'Die Länge des Textes darf nicht weniger als $min Zeichen betragen',
    );
  }

  @override
  String ruleMinNumber(num min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'Der Wert der Zahl darf nicht kleiner als $min sein',
    );
  }

  @override
  String ruleMinListLength(num min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'Die Größe der Liste darf nicht kleiner als $min sein',
    );
  }

  @override
  String get ruleRegex => 'Die Daten sind ungültig';

  @override
  String get ruleRequired => 'Dieses Feld wird benötigt';

  @override
  String get ruleSame => 'Die Felder stimmen nicht überein';

  @override
  String ruleSizeStringLength(num size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      one: 'Die Länge des Textes muss $size Zeichen sein',
      other: 'Die Länge des Textes muss $size Zeichen betragen',
    );
  }

  @override
  String ruleSizeNumber(num size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'Der Zahlenwert muss $size sein',
    );
  }

  @override
  String ruleSizeListLength(num size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'Die Größe der Liste muss $size sein',
    );
  }
}
