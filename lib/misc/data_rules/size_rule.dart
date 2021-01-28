import 'package:flutter_essentials_kit/errors/data_rules/size_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';
import 'package:meta/meta.dart';

class SizeRule<T> extends DataRule<T, T> {
  final num size;

  SizeRuleError _stringError;
  SizeRuleError _numberError;
  SizeRuleError _listError;

  SizeRule({
    @required this.size,
    SizeRuleError stringError,
    SizeRuleError numberError,
    SizeRuleError listError,
  }) {
    assert(size != null);

    _stringError = stringError ?? SizeRuleError.string(size: size);
    _numberError = numberError ?? SizeRuleError.number(size: size);
    _listError = listError ?? SizeRuleError.list(size: size);
  }

  @override
  T process(T data) {
    if (data is String) {
      return _processString(data) as T;
    } else if (data is num) {
      return _processNumber(data) as T;
    } else if (data is List) {
      return _processList(data) as T;
    }

    return data;
  }

  String _processString(String data) {
    if (data.length != size) {
      throw _stringError;
    }
    return data;
  }

  num _processNumber(num data) {
    if (data != size) {
      throw _numberError;
    }
    return data;
  }

  List _processList(List data) {
    if (data.length == size) {
      throw _listError;
    }
    return data;
  }
}
