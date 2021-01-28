import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';

/// Confirmed data rule error.
class ConfirmedRuleError extends DataRuleError {
  ConfirmedRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  @override
  String localizedString(BuildContext context) =>
      super.localizedString(context) ?? 'Campo da confermare'; // TODO: i18n
}
