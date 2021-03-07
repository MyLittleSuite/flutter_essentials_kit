import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations.dart';

/// Size value data rule error.
class SizeRuleError extends DataRuleError {
  SizeRuleError({
    DataRuleErrorLocalizedMessage? localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  SizeRuleError.string(int size)
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  ?.ruleSizeStringLength(size),
        );

  SizeRuleError.number(int size)
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  ?.ruleSizeNumber(size),
        );

  SizeRuleError.list(int size)
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  ?.ruleSizeListLength(size),
        );
}
