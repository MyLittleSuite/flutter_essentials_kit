
// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'flutter_essentials_kit_localizations.dart';

// ignore_for_file: unnecessary_brace_in_string_interps

/// The translations for French (`fr`).
class FlutterEssentialsKitLocalizationsFr extends FlutterEssentialsKitLocalizations {
  FlutterEssentialsKitLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get ruleConfirmed => 'Champ à confirmer';

  @override
  String get ruleEmail => 'Cet email ne semble pas valide';

  @override
  String ruleMaxStringLength(int max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      one: 'La longueur du texte ne peut pas être supérieure à ${max} caractère',
      other: 'La longueur du texte ne peut pas dépasser ${max} caractères',
    );
  }

  @override
  String ruleMaxNumber(int max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'La valeur du nombre ne peut pas être supérieure à ${max}',
    );
  }

  @override
  String ruleMaxListLength(int max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'La taille de la liste ne peut pas être supérieure à ${max}',
    );
  }

  @override
  String ruleMinStringLength(int min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      one: 'La longueur du texte ne peut pas être inférieure à ${min} caractère',
      other: 'La longueur du texte ne peut pas être inférieure à ${min} caractères',
    );
  }

  @override
  String ruleMinNumber(int min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'La valeur du nombre ne peut pas être inférieure à ${min}',
    );
  }

  @override
  String ruleMinListLength(int min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'La taille de la liste ne peut pas être inférieure à ${min}',
    );
  }

  @override
  String get ruleRegex => 'Les données ne sont pas valides';

  @override
  String get ruleRequired => 'Ce champ est requis';

  @override
  String get ruleSame => 'Les champs ne correspondent pas';

  @override
  String ruleSizeStringLength(int size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      one: 'La longueur du texte doit être de ${size} caractère',
      other: 'La longueur du texte doit être de ${size} caractères',
    );
  }

  @override
  String ruleSizeNumber(int size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'La valeur numérique doit être ${size}',
    );
  }

  @override
  String ruleSizeListLength(int size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'La taille de la liste doit être de ${size}',
    );
  }
}
