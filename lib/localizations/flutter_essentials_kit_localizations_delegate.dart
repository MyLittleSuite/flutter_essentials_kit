import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations.dart';

class FlutterEssentialsKitLocalizationsDelegate
    extends LocalizationsDelegate<FlutterEssentialsKitLocalizations> {
  @override
  bool isSupported(Locale locale) =>
      FlutterEssentialsKitLocalizations.supportedLocales.contains(locale);

  @override
  Future<FlutterEssentialsKitLocalizations> load(Locale locale) =>
      SynchronousFuture(FlutterEssentialsKitLocalizations(locale));

  @override
  bool shouldReload(
    covariant LocalizationsDelegate<FlutterEssentialsKitLocalizations> old,
  ) =>
      false;
}
