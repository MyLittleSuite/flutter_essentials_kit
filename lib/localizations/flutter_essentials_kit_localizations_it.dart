import 'package:intl/intl.dart' as intl;

import 'flutter_essentials_kit_localizations.dart';

/// The translations for Italian (`it`).
class FlutterEssentialsKitLocalizationsIt extends FlutterEssentialsKitLocalizations {
  FlutterEssentialsKitLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get ruleConfirmed => 'Campo da confermare';

  @override
  String get ruleEmail => 'Questa email non sembra valida';

  @override
  String ruleMaxStringLength(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'La lunghezza del testo non può essere maggiore di $max caratteri',
      one: 'La lunghezza del testo non può essere maggiore di $max carattere',
    );
    return '$_temp0';
  }

  @override
  String ruleMaxNumber(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'Il valore del numero non può essere maggiore di $max',
    );
    return '$_temp0';
  }

  @override
  String ruleMaxListLength(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'La dimensione della lista non può essere maggiore di $max',
    );
    return '$_temp0';
  }

  @override
  String ruleMinStringLength(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'La lunghezza del testo non può essere minore di $min caratteri',
      one: 'La lunghezza del testo non può essere minore di $min carattere',
    );
    return '$_temp0';
  }

  @override
  String ruleMinNumber(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'Il valore del numero non può essere minore di $min',
    );
    return '$_temp0';
  }

  @override
  String ruleMinListLength(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'La dimensione della lista non può essere minore di $min',
    );
    return '$_temp0';
  }

  @override
  String get ruleRegex => 'Il dato non è valido';

  @override
  String get ruleRequired => 'Questo campo è richiesto';

  @override
  String get ruleSame => 'I campi non corrispondono';

  @override
  String ruleSizeStringLength(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'La lunghezza del testo deve essere di $size caratteri',
      one: 'La lunghezza del testo deve essere di $size carattere',
    );
    return '$_temp0';
  }

  @override
  String ruleSizeNumber(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'Il valore del numero deve essere $size',
    );
    return '$_temp0';
  }

  @override
  String ruleSizeListLength(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'La dimensione della lista deve essere di $size',
    );
    return '$_temp0';
  }
}
