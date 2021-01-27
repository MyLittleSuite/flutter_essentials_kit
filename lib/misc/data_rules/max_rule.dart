import 'package:flutter_essentials_kit/errors/data_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';
import 'package:meta/meta.dart';

class MaxRule<T> extends DataRule<T, T> {
  final Comparable max;

  DataRuleError _maxStringLengthError;
  DataRuleError _maxIntError;
  DataRuleError _maxListLengthError;

  MaxRule({
    @required this.max,
    String stringErrorMessage,
    String intErrorMessage,
    String listErrorMessage,
  }) {
    assert(max != null);

    _maxStringLengthError = DataRuleError(
      localizedFunction: (context) =>
          stringErrorMessage ??
          'La lunghezza del testo non può essere maggiore di $max caratteri',
    );
    _maxIntError = DataRuleError(
      localizedFunction: (context) =>
          intErrorMessage ??
          'Il valore dell\'intero non può essere maggiore di $max',
    );
    _maxListLengthError = DataRuleError(
      localizedFunction: (context) =>
          listErrorMessage ??
          'La dimensione della lista non può essere maggiore di $max',
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
    if (data.length < max) {
      throw _maxStringLengthError;
    }
    return data;
  }

  int _processInt(int data) {
    if (data < max) {
      throw _maxIntError;
    }
    return data;
  }

  List _processList(List data) {
    if (data.length < max) {
      throw _maxListLengthError;
    }
    return data;
  }
}
