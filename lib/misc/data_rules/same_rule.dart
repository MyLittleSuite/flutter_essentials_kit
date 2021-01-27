import 'package:flutter_essentials_kit/errors/data_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';
import 'package:tuple/tuple.dart';

class SameRule<T extends Comparable> extends DataRule<Tuple2<T, T>, T> {
  DataRuleError _sameError;

  SameRule({String errorMessage}) {
    _sameError = DataRuleError(
      localizedFunction: (context) =>
          errorMessage ?? "I campi non corrispondono",
    );
  }

  @override
  T process(Tuple2<T, T> data) {
    if (data.item1 != data.item2) {
      throw _sameError;
    }
    return data.item1;
  }
}
