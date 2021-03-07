import 'package:flutter_essentials_kit/errors/data_rules/min_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';

/// Definition of the min value data rule.
class MinRule<T> extends DataRule<T, T> {
  final num min;

  MinRuleError _stringError;
  MinRuleError _numberError;
  MinRuleError _listError;

  MinRule(
    this.min, {
    MinRuleError? stringError,
    MinRuleError? numberError,
    MinRuleError? listError,
  })  : _stringError = stringError ?? MinRuleError.string(min.toInt()),
        _numberError = numberError ?? MinRuleError.number(min.toInt()),
        _listError = listError ?? MinRuleError.list(min.toInt());

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

    if (data.length < min) {
      throw _stringError;
    }
    return data;
  }

  num _processNumber(num data) {
    if (data < min) {
      throw _numberError;
    }
    return data;
  }

  List _processList(List data) {
    if (data.length < min) {
      throw _listError;
    }
    return data;
  }
}
