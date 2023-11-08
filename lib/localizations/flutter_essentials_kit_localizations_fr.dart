import 'package:intl/intl.dart' as intl;

import 'flutter_essentials_kit_localizations.dart';

/// The translations for French (`fr`).
class FlutterEssentialsKitLocalizationsFr extends FlutterEssentialsKitLocalizations {
  FlutterEssentialsKitLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get ruleConfirmed => 'Champ à confirmer';

  @override
  String get ruleEmail => 'Cet email ne semble pas valide';

  @override
  String ruleMaxStringLength(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'La longueur du texte ne peut pas dépasser $max caractères',
      one: 'La longueur du texte ne peut pas être supérieure à $max caractère',
    );
    return '$_temp0';
  }

  @override
  String ruleMaxNumber(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'La valeur du nombre ne peut pas être supérieure à $max',
    );
    return '$_temp0';
  }

  @override
  String ruleMaxListLength(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'La taille de la liste ne peut pas être supérieure à $max',
    );
    return '$_temp0';
  }

  @override
  String ruleMinStringLength(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'La longueur du texte ne peut pas être inférieure à $min caractères',
      one: 'La longueur du texte ne peut pas être inférieure à $min caractère',
    );
    return '$_temp0';
  }

  @override
  String ruleMinNumber(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'La valeur du nombre ne peut pas être inférieure à $min',
    );
    return '$_temp0';
  }

  @override
  String ruleMinListLength(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'La taille de la liste ne peut pas être inférieure à $min',
    );
    return '$_temp0';
  }

  @override
  String get ruleRegex => 'Les données ne sont pas valides';

  @override
  String get ruleRequired => 'Ce champ est requis';

  @override
  String get ruleSame => 'Les champs ne correspondent pas';

  @override
  String ruleSizeStringLength(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'La longueur du texte doit être de $size caractères',
      one: 'La longueur du texte doit être de $size caractère',
    );
    return '$_temp0';
  }

  @override
  String ruleSizeNumber(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'La valeur numérique doit être $size',
    );
    return '$_temp0';
  }

  @override
  String ruleSizeListLength(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'La taille de la liste doit être de $size',
    );
    return '$_temp0';
  }
}
