import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations.dart';
import 'package:meta/meta.dart';

/// Min value data rule error.
class MinRuleError extends DataRuleError {
  MinRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  MinRuleError.string({@required int min})
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  .ruleMinStringLength(min),
        );

  MinRuleError.number({@required int min})
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context).ruleMinNumber(min),
        );

  MinRuleError.list({@required int min})
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  .ruleMinListLength(min),
        );
}
