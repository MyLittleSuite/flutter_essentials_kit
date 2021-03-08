import 'package:flutter_essentials_kit/errors/data_rules/same_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';
import 'package:tuple/tuple.dart';

/// Definition of the same data of another field.
class SameRule<T extends Comparable> extends DataRule<Tuple2<T?, T?>, T> {
  SameRuleError _error;

  SameRule({SameRuleError? error}) : _error = error ?? SameRuleError();

  @override
  T? process(Tuple2<T?, T?>? data) {
    if (data != null) {
      if (data.item1 != data.item2) {
        throw _error;
      }
      return data.item1;
    }

    return null;
  }
}
