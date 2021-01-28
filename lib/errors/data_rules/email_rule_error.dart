import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';

/// Invalid email data rule error.
class EmailRuleError extends DataRuleError {
  EmailRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  @override
  String localizedString(BuildContext context) =>
      super.localizedString(context) ??
      'Questa email non sembra valida'; // TODO: i18n
}
