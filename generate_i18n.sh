fvm flutter gen-l10n \
  --arb-dir=lib/localizations \
  --output-dir=lib/localizations \
  --template-arb-file=flutter_essentials_kit_en.arb \
  --output-class=FlutterEssentialsKitLocalizations \
  --output-localization-file=flutter_essentials_kit_localizations.dart

cp .dart_tool/flutter_gen/gen_l10n/*.dart lib/localizations/
