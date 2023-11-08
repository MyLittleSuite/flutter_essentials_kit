import 'package:intl/intl.dart' as intl;

import 'flutter_essentials_kit_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class FlutterEssentialsKitLocalizationsEs extends FlutterEssentialsKitLocalizations {
  FlutterEssentialsKitLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get ruleConfirmed => 'Campo por confirmar';

  @override
  String get ruleEmail => 'Este correo electrónico no parece ser válido';

  @override
  String ruleMaxStringLength(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'La longitud del texto no puede ser superior a $max caracteres',
      one: 'La longitud del texto no puede ser superior a $max carácter',
    );
    return '$_temp0';
  }

  @override
  String ruleMaxNumber(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'El valor numérico no puede ser mayor que $max',
    );
    return '$_temp0';
  }

  @override
  String ruleMaxListLength(num max) {
    String _temp0 = intl.Intl.pluralLogic(
      max,
      locale: localeName,
      other: 'El tamaño de la lista no puede ser superior a $max',
    );
    return '$_temp0';
  }

  @override
  String ruleMinStringLength(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'La longitud del texto no puede ser inferior a $min caracteres',
      one: 'La longitud del texto no puede ser inferior a $min carácter',
    );
    return '$_temp0';
  }

  @override
  String ruleMinNumber(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'El valor numérico no puede ser inferior a $min',
    );
    return '$_temp0';
  }

  @override
  String ruleMinListLength(num min) {
    String _temp0 = intl.Intl.pluralLogic(
      min,
      locale: localeName,
      other: 'El tamaño de la lista no puede ser inferior a $min',
    );
    return '$_temp0';
  }

  @override
  String get ruleRegex => 'El elemento de datos no es válido';

  @override
  String get ruleRequired => 'Este campo es obligatorio';

  @override
  String get ruleSame => 'Los campos no coinciden';

  @override
  String ruleSizeStringLength(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'La longitud del texto debe ser $size caracteres',
      one: 'La longitud del texto debe ser $size carácter',
    );
    return '$_temp0';
  }

  @override
  String ruleSizeNumber(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'El valor numérico debe ser $size caracteres',
    );
    return '$_temp0';
  }

  @override
  String ruleSizeListLength(num size) {
    String _temp0 = intl.Intl.pluralLogic(
      size,
      locale: localeName,
      other: 'El tamaño de la lista debe ser $size',
    );
    return '$_temp0';
  }
}
