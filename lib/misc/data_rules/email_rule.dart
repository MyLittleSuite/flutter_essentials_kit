import 'package:flutter_essentials_kit/errors/data_rules/email_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/regex_rule.dart';

/// Definition of the valid email data rule.
class EmailRule extends RegexRule {
  EmailRule({EmailRuleError? error})
      : super(
          RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$",
          ),
          error: error ?? EmailRuleError(),
        );
}
