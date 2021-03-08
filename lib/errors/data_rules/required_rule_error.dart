import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations.dart';

/// Required data rule error.
class RequiredRuleError extends DataRuleError {
  RequiredRuleError({
    DataRuleErrorLocalizedMessage? localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  @override
  String? localizedString(BuildContext context) =>
      super.localizedString(context) ??
      FlutterEssentialsKitLocalizations.of(context)?.ruleRequired;
}
