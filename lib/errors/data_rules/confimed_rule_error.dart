import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations.dart';

/// Confirmed data rule error.
class ConfirmedRuleError extends DataRuleError {
  ConfirmedRuleError({
    DataRuleErrorLocalizedMessage? localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  @override
  String? localizedString(BuildContext context) =>
      super.localizedString(context) ??
      FlutterEssentialsKitLocalizations.of(context).ruleConfirmed;
}
