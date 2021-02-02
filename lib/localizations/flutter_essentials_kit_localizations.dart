import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations_delegate.dart';
import 'package:flutter_essentials_kit/localizations/languages/en.dart';
import 'package:flutter_essentials_kit/localizations/languages/it.dart';
import 'package:intl/intl.dart';

class FlutterEssentialsKitLocalizations {
  final Locale locale;

  FlutterEssentialsKitLocalizations(this.locale);

  static FlutterEssentialsKitLocalizations of(BuildContext context) =>
      Localizations.of(context, FlutterEssentialsKitLocalizations);

  static Set<Locale> get supportedLocales => _localizedValues.keys.toSet();

  static LocalizationsDelegate<FlutterEssentialsKitLocalizations>
      get delegate => FlutterEssentialsKitLocalizationsDelegate();

  static Map<Locale, Map<String, String>> get _localizedValues => {
        Locale('en'): EN_LANGUAGES,
        Locale('it'): IT_LANGUAGES,
      };

  String get ruleConfirmed => _localizedValues[locale]['rule_confirmed'];

  String get ruleEmail => _localizedValues[locale]['rule_email'];

  String ruleMaxStringLength(int max) => Intl.plural(
        max,
        args: [max],
        one: _localizedValues[locale]['rule_max_string_length_one'],
        many: _localizedValues[locale]['rule_max_string_length_many'],
      );

  String ruleMaxNumber(int max) => Intl.plural(
        max,
        args: [max],
        many: _localizedValues[locale]['rule_max_number'],
      );

  String ruleMaxListLength(int max) => Intl.plural(
        max,
        args: [max],
        many: _localizedValues[locale]['rule_max_list_length'],
      );

  String ruleMinStringLength(int min) => Intl.plural(
        min,
        args: [min],
        one: _localizedValues[locale]['rule_min_string_length_one'],
        many: _localizedValues[locale]['rule_min_string_length_many'],
      );

  String ruleMinNumber(int min) => Intl.plural(
        min,
        args: [min],
        many: _localizedValues[locale]['rule_min_number'],
      );

  String ruleMinListLength(int min) => Intl.plural(
        min,
        args: [min],
        many: _localizedValues[locale]['rule_min_list_length'],
      );

  String get ruleRegex => _localizedValues[locale]['rule_regex'];

  String get ruleRequired => _localizedValues[locale]['rule_required'];

  String get ruleSame => _localizedValues[locale]['rule_same'];

  String ruleSizeStringLength(int size) => Intl.plural(
        size,
        args: [size],
        one: _localizedValues[locale]['rule_size_string_length_one'],
        many: _localizedValues[locale]['rule_size_string_length_many'],
      );

  String ruleSizeNumber(int size) => Intl.plural(
        size,
        args: [size],
        many: _localizedValues[locale]['rule_size_number'],
      );

  String ruleSizeListLength(int size) => Intl.plural(
        size,
        args: [size],
        many: _localizedValues[locale]['rule_size_list_length'],
      );
}
