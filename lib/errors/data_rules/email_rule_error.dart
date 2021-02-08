import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/regex_rule_error.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations.dart';

/// Invalid email data rule error.
class EmailRuleError extends RegexRuleError {
  EmailRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  @override
  String localizedString(BuildContext context) => localizedMessage != null
      ? super.localizedString(context)
      : FlutterEssentialsKitLocalizations.of(context).ruleEmail;
}
