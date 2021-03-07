import 'package:flutter_essentials_kit/errors/data_rules/regex_rule_error.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';

/// Definition of the valid data using regex.
class RegexRule extends DataRule<String, String> {
  final RegExp regex;

  RegexRuleError _error;

  RegexRule(this.regex, {RegexRuleError? error})
      : _error = error ?? RegexRuleError();

  @override
  String? process(String? data) {
    if (data != null && !regex.hasMatch(data)) {
      throw _error;
    }

    return data;
  }
}
