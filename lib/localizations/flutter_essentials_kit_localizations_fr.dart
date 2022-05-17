

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
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      one: 'La longueur du texte ne peut pas être supérieure à $max caractère',
      other: 'La longueur du texte ne peut pas dépasser $max caractères',
    );
  }

  @override
  String ruleMaxNumber(num max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'La valeur du nombre ne peut pas être supérieure à $max',
    );
  }

  @override
  String ruleMaxListLength(num max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'La taille de la liste ne peut pas être supérieure à $max',
    );
  }

  @override
  String ruleMinStringLength(num min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      one: 'La longueur du texte ne peut pas être inférieure à $min caractère',
      other: 'La longueur du texte ne peut pas être inférieure à $min caractères',
    );
  }

  @override
  String ruleMinNumber(num min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'La valeur du nombre ne peut pas être inférieure à $min',
    );
  }

  @override
  String ruleMinListLength(num min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'La taille de la liste ne peut pas être inférieure à $min',
    );
  }

  @override
  String get ruleRegex => 'Les données ne sont pas valides';

  @override
  String get ruleRequired => 'Ce champ est requis';

  @override
  String get ruleSame => 'Les champs ne correspondent pas';

  @override
  String ruleSizeStringLength(num size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      one: 'La longueur du texte doit être de $size caractère',
      other: 'La longueur du texte doit être de $size caractères',
    );
  }

  @override
  String ruleSizeNumber(num size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'La valeur numérique doit être $size',
    );
  }

  @override
  String ruleSizeListLength(num size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'La taille de la liste doit être de $size',
    );
  }
}
