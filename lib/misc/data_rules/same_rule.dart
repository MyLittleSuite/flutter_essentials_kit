import 'package:flutter_essentials_kit/errors/data_rules/same_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';

/// Definition of the same data of another field.
class SameRule<T extends Comparable> extends DataRule<(T?, T?), T> {
  SameRuleError _error;

  SameRule({SameRuleError? error}) : _error = error ?? SameRuleError();

  @override
  T? process((T?, T?)? data) {
    if (data != null) {
      if (data.$1 != data.$2) {
        throw _error;
      }
      return data.$1;
    }

    return null;
  }
}
