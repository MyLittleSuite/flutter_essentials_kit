import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';

/// Same value data rule error.
class SameRuleError extends DataRuleError {
  SameRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  @override
  String localizedString(BuildContext context) =>
      super.localizedString(context) ??
      "I campi non corrispondono"; // TODO: i18n
}
