import 'package:flutter_essentials_kit/errors/data_rules/email_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';

/// Definition of the valid email data rule.
class EmailRule extends DataRule<String, String> {
  final regex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$");

  EmailRuleError _error;

  EmailRule({EmailRuleError error}) {
    _error = error ?? EmailRuleError();
  }

  @override
  String process(String data) {
    if (!regex.hasMatch(data)) {
      throw _error;
    }

    return data;
  }
}
