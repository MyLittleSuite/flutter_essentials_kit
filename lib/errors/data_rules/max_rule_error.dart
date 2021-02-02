import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations.dart';
import 'package:meta/meta.dart';

/// Max value data rule error.
class MaxRuleError extends DataRuleError {
  MaxRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  MaxRuleError.string({@required int max})
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  .ruleMaxStringLength(max),
        );

  MaxRuleError.number({@required int max})
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context).ruleMaxNumber(max),
        );

  MaxRuleError.list({@required int max})
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context).ruleMaxListLength(max),
        );
}
