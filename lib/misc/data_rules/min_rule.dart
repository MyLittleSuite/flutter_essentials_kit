import 'package:flutter_essentials_kit/errors/data_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';
import 'package:meta/meta.dart';

class MinRule<T> extends DataRule<T, T> {
  final Comparable min;

  DataRuleError _minStringLengthError;
  DataRuleError _minIntError;
  DataRuleError _minListLengthError;

  MinRule({
    @required this.min,
    String stringErrorMessage,
    String intErrorMessage,
    String listErrorMessage,
  }) {
    assert(min != null);

    _minStringLengthError = DataRuleError(
      localizedFunction: (context) =>
      stringErrorMessage ??
          'La lunghezza del testo non può essere minore di $min caratteri',
    );
    _minIntError = DataRuleError(
      localizedFunction: (context) =>
      intErrorMessage ??
          'Il valore dell\'intero non può essere minore di $min',
    );
    _minListLengthError = DataRuleError(
      localizedFunction: (context) =>
      listErrorMessage ??
          'La dimensione della lista non può essere minore di $min',
    );
  }

  @override
  T process(T data) {
    if (data is String) {
      return _processString(data) as T;
    } else if (data is int) {
      return _processInt(data) as T;
    } else if (data is List) {
      return _processList(data) as T;
    }

    return data;
  }

  String _processString(String data) {
    if (data.length < min) {
      throw _minStringLengthError;
    }
    return data;
  }

  int _processInt(int data) {
    if (data < min) {
      throw _minIntError;
    }
    return data;
  }

  List _processList(List data) {
    if (data.length < min) {
      throw _minListLengthError;
    }
    return data;
  }
}
