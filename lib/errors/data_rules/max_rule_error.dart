import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations.dart';

/// Max value data rule error.
class MaxRuleError extends DataRuleError {
  MaxRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  MaxRuleError.string(int max)
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  .ruleMaxStringLength(max),
        );

  MaxRuleError.number(int max)
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context).ruleMaxNumber(max),
        );

  MaxRuleError.list(int max)
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context).ruleMaxListLength(max),
        );
}
