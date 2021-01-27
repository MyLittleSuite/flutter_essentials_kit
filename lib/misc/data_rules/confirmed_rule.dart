import 'package:flutter_essentials_kit/errors/data_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';

class ConfirmedRule extends DataRule<bool, bool> {
  DataRuleError _confirmedError;

  ConfirmedRule({String errorMessage}) {
    _confirmedError = DataRuleError(
      localizedFunction: (context) => errorMessage ?? 'Campo da confermare',
    );
  }

  @override
  bool process(bool data) {
    if (!data) {
      throw _confirmedError;
    }

    return data;
  }
}
