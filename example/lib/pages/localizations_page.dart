import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';

typedef LocalizeCallback = String Function(
    FlutterEssentialsKitLocalizations localizations);

final Map<String, LocalizeCallback> keyValues = {
  'ruleConfirmed': (localizations) => localizations.ruleConfirmed,
  'ruleEmail': (localizations) => localizations.ruleEmail,
  'ruleMaxStringLength_0': (localizations) =>
      localizations.ruleMaxStringLength(0),
  'ruleMaxStringLength_1': (localizations) =>
      localizations.ruleMaxStringLength(1),
  'ruleMaxStringLength_2': (localizations) =>
      localizations.ruleMaxStringLength(2),
  'ruleMaxNumber_0': (localizations) => localizations.ruleMaxNumber(0),
  'ruleMaxNumber_1': (localizations) => localizations.ruleMaxNumber(1),
  'ruleMaxNumber_2': (localizations) => localizations.ruleMaxNumber(2),
  'ruleMaxListLength_0': (localizations) => localizations.ruleMaxListLength(0),
  'ruleMaxListLength_1': (localizations) => localizations.ruleMaxListLength(1),
  'ruleMaxListLength_2': (localizations) => localizations.ruleMaxListLength(2),
  'ruleMinStringLength_0': (localizations) =>
      localizations.ruleMinStringLength(0),
  'ruleMinStringLength_1': (localizations) =>
      localizations.ruleMinStringLength(1),
  'ruleMinStringLength_2': (localizations) =>
      localizations.ruleMinStringLength(2),
  'ruleMinNumber_0': (localizations) => localizations.ruleMinNumber(0),
  'ruleMinNumber_1': (localizations) => localizations.ruleMinNumber(1),
  'ruleMinNumber_2': (localizations) => localizations.ruleMinNumber(2),
  'ruleMinListLength_0': (localizations) => localizations.ruleMinListLength(0),
  'ruleMinListLength_1': (localizations) => localizations.ruleMinListLength(1),
  'ruleMinListLength_2': (localizations) => localizations.ruleMinListLength(2),
  'ruleRegex': (localizations) => localizations.ruleRegex,
  'ruleRequired': (localizations) => localizations.ruleRequired,
  'ruleSame': (localizations) => localizations.ruleSame,
  'ruleSizeStringLength_0': (localizations) =>
      localizations.ruleSizeStringLength(0),
  'ruleSizeStringLength_1': (localizations) =>
      localizations.ruleSizeStringLength(1),
  'ruleSizeStringLength_2': (localizations) =>
      localizations.ruleSizeStringLength(2),
  'ruleSizeNumber_0': (localizations) => localizations.ruleSizeNumber(0),
  'ruleSizeNumber_1': (localizations) => localizations.ruleSizeNumber(1),
  'ruleSizeNumber_2': (localizations) => localizations.ruleSizeNumber(2),
  'ruleSizeListLength_0': (localizations) =>
      localizations.ruleSizeListLength(0),
  'ruleSizeListLength_1': (localizations) =>
      localizations.ruleSizeListLength(1),
  'ruleSizeListLength_2': (localizations) =>
      localizations.ruleSizeListLength(2),
};

class LocalizationsPage extends StatefulWidget {
  @override
  State<LocalizationsPage> createState() => _LocalizationsPageState();
}

class _LocalizationsPageState extends State<LocalizationsPage> {
  late Locale _locale;

  @override
  void initState() {
    _locale = FlutterEssentialsKitLocalizations.supportedLocales[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Localizations'),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: DropdownButton<Locale>(
                  value: _locale,
                  onChanged: (locale) => setState(() => _locale = locale!),
                  isExpanded: true,
                  items: FlutterEssentialsKitLocalizations.supportedLocales
                      .map(
                        (locale) => DropdownMenuItem<Locale>(
                          value: locale,
                          child: Text(locale.languageCode),
                        ),
                      )
                      .toList(growable: false),
                ),
              ),
            ),
            Expanded(
              child: _LocalizationWidget(_locale),
            ),
          ],
        ),
      );
}

class _LocalizationWidget extends StatelessWidget {
  final Locale locale;

  const _LocalizationWidget(
    this.locale, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      FutureBuilder<FlutterEssentialsKitLocalizations>(
        future: FlutterEssentialsKitLocalizations.delegate.load(locale),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error!.toString()),
            );
          } else if (snapshot.hasData) {
            return ListView(
              children: keyValues.entries
                  .map(
                    (e) => ListTile(
                      title: Text(e.value(snapshot.data!)),
                      subtitle: Text(e.key),
                    ),
                  )
                  .toList(growable: false),
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      );
}
