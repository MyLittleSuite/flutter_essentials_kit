
// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'flutter_essentials_kit_localizations.dart';

// ignore_for_file: unnecessary_brace_in_string_interps

/// The translations for Italian (`it`).
class FlutterEssentialsKitLocalizationsIt extends FlutterEssentialsKitLocalizations {
  FlutterEssentialsKitLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get ruleConfirmed => 'Campo da confermare';

  @override
  String get ruleEmail => 'Questa email non sembra valida';

  @override
  String ruleMaxStringLength(int max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      one: 'La lunghezza del testo non può essere maggiore di ${max} carattere',
      other: 'La lunghezza del testo non può essere maggiore di ${max} caratteri',
    );
  }

  @override
  String ruleMaxNumber(int max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'Il valore del numero non può essere maggiore di ${max}',
    );
  }

  @override
  String ruleMaxListLength(int max) {
    return intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'La dimensione della lista non può essere maggiore di ${max}',
    );
  }

  @override
  String ruleMinStringLength(int min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      one: 'La lunghezza del testo non può essere minore di ${min} carattere',
      other: 'La lunghezza del testo non può essere minore di ${min} caratteri',
    );
  }

  @override
  String ruleMinNumber(int min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'Il valore del numero non può essere minore di ${min}',
    );
  }

  @override
  String ruleMinListLength(int min) {
    return intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'La dimensione della lista non può essere minore di ${min}',
    );
  }

  @override
  String get ruleRegex => 'Il dato non è valido';

  @override
  String get ruleRequired => 'Questo campo è richiesto';

  @override
  String get ruleSame => 'I campi non corrispondono';

  @override
  String ruleSizeStringLength(int size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      one: 'La lunghezza del testo deve essere di ${size} carattere',
      other: 'La lunghezza del testo deve essere di ${size} caratteri',
    );
  }

  @override
  String ruleSizeNumber(int size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'Il valore del numero deve essere ${size}',
    );
  }

  @override
  String ruleSizeListLength(int size) {
    return intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'La dimensione della lista deve essere di ${size}',
    );
  }
}
