import 'package:flutter_essentials_kit/errors/data_rules/max_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';

/// Definition of the max value data rule.
class MaxRule<T> extends DataRule<T, T> {
  final num max;

  MaxRuleError _stringError;
  MaxRuleError _numberError;
  MaxRuleError _listError;

  MaxRule(
    this.max, {
    MaxRuleError? stringError,
    MaxRuleError? numberError,
    MaxRuleError? listError,
  })  : _stringError = stringError ?? MaxRuleError.string(max.toInt()),
        _numberError = numberError ?? MaxRuleError.number(max.toInt()),
        _listError = listError ?? MaxRuleError.list(max.toInt());

  @override
  T? process(T? data) {
    if (data != null) {
      if (data is String) {
        return _processString(data) as T;
      } else if (data is num) {
        return _processNumber(data) as T;
      } else if (data is List) {
        return _processList(data) as T;
      }
    }

    return data;
  }

  String _processString(String data) {
    final number = num.tryParse(data);
    if (number != null) {
      return _processNumber(number).toString();
    }

    if (data.length > max) {
      throw _stringError;
    }
    return data;
  }

  num _processNumber(num data) {
    if (data > max) {
      throw _numberError;
    }
    return data;
  }

  List _processList(List data) {
    if (data.length > max) {
      throw _listError;
    }
    return data;
  }
}
