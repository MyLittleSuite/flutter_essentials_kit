import 'package:flutter_essentials_kit/errors/data_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';

class EmailRule extends DataRule<String, String> {
  final regex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$");

  DataRuleError _emailError;

  EmailRule({String errorMessage}) {
    _emailError = DataRuleError(
      localizedFunction: (context) =>
          errorMessage ?? "Questa email non è valida",
    );
  }

  @override
  String process(String data) {
    if (!regex.hasMatch(data)) {
      throw _emailError;
    }

    return data;
  }
}
