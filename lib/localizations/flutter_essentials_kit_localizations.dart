
import 'dart:async';

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'flutter_essentials_kit_localizations_de.dart';
import 'flutter_essentials_kit_localizations_en.dart';
import 'flutter_essentials_kit_localizations_fr.dart';
import 'flutter_essentials_kit_localizations_it.dart';

/// Callers can lookup localized strings with an instance of FlutterEssentialsKitLocalizations returned
/// by `FlutterEssentialsKitLocalizations.of(context)`.
///
/// Applications need to include `FlutterEssentialsKitLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'gen_l10n/flutter_essentials_kit_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FlutterEssentialsKitLocalizations.localizationsDelegates,
///   supportedLocales: FlutterEssentialsKitLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: 0.16.1
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the FlutterEssentialsKitLocalizations.supportedLocales
/// property.
abstract class FlutterEssentialsKitLocalizations {
  FlutterEssentialsKitLocalizations(String locale) : assert(locale != null), localeName = intl.Intl.canonicalizedLocale(locale.toString());

  // ignore: unused_field
  final String localeName;

  static FlutterEssentialsKitLocalizations of(BuildContext context) {
    return Localizations.of<FlutterEssentialsKitLocalizations>(context, FlutterEssentialsKitLocalizations);
  }

  static const LocalizationsDelegate<FlutterEssentialsKitLocalizations> delegate = _FlutterEssentialsKitLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('fr'),
    Locale('it')
  ];

  // The rule confirmed error message
  String get ruleConfirmed;

  // The rule email error message
  String get ruleEmail;

  // The rule max string error message
  String ruleMaxStringLength(int max);

  // The rule max number error message
  String ruleMaxNumber(int max);

  // The rule max list length error message
  String ruleMaxListLength(int max);

  // The rule min string error message
  String ruleMinStringLength(int min);

  // The rule min number error message
  String ruleMinNumber(int min);

  // The rule min list length error message
  String ruleMinListLength(int min);

  // The rule regex error message
  String get ruleRegex;

  // The rule required error message
  String get ruleRequired;

  // The rule same error message
  String get ruleSame;

  // The rule size string length error message
  String ruleSizeStringLength(int size);

  // The rule size number error message
  String ruleSizeNumber(int size);

  // The rule size list length error message
  String ruleSizeListLength(int size);
}

class _FlutterEssentialsKitLocalizationsDelegate extends LocalizationsDelegate<FlutterEssentialsKitLocalizations> {
  const _FlutterEssentialsKitLocalizationsDelegate();

  @override
  Future<FlutterEssentialsKitLocalizations> load(Locale locale) {
    return SynchronousFuture<FlutterEssentialsKitLocalizations>(_lookupFlutterEssentialsKitLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en', 'fr', 'it'].contains(locale.languageCode);

  @override
  bool shouldReload(_FlutterEssentialsKitLocalizationsDelegate old) => false;
}

FlutterEssentialsKitLocalizations _lookupFlutterEssentialsKitLocalizations(Locale locale) {
  
  
  
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return FlutterEssentialsKitLocalizationsDe();
    case 'en': return FlutterEssentialsKitLocalizationsEn();
    case 'fr': return FlutterEssentialsKitLocalizationsFr();
    case 'it': return FlutterEssentialsKitLocalizationsIt();
  }

  assert(false, 'FlutterEssentialsKitLocalizations.delegate failed to load unsupported locale "$locale"');
  return null;
}
