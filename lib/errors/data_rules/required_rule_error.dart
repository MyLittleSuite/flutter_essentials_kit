import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';

/// Required data rule error.
class RequiredRuleError extends DataRuleError {
  RequiredRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  @override
  String localizedString(BuildContext context) =>
      super.localizedString(context) ??
      'Questo campo è richiesto'; // TODO: i18n
}
