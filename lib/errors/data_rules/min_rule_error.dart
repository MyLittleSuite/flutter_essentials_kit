import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations.dart';

/// Min value data rule error.
class MinRuleError extends DataRuleError {
  MinRuleError({
    DataRuleErrorLocalizedMessage? localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  MinRuleError.string(int min)
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  ?.ruleMinStringLength(min),
        );

  MinRuleError.number(int min)
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)?.ruleMinNumber(min),
        );

  MinRuleError.list(int min)
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  ?.ruleMinListLength(min),
        );
}
