import 'package:flutter_essentials_kit/errors/data_rules/confimed_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';

/// Definition of the confirmation data rule, validating if a bool is true.
class ConfirmedRule extends DataRule<bool, bool> {
  ConfirmedRuleError _error;

  ConfirmedRule({ConfirmedRuleError error}) {
    _error = error ?? ConfirmedRuleError();
  }

  @override
  bool process(bool data) {
    if (!data) {
      throw _error;
    }

    return data;
  }
}
