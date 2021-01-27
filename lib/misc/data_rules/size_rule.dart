import 'package:flutter_essentials_kit/errors/data_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';
import 'package:meta/meta.dart';

class SizeRule<T> extends DataRule<T, T> {
  final int size;

  DataRuleError _sizeStringError;
  DataRuleError _sizeIntError;
  DataRuleError _sizeListError;

  SizeRule({
    @required this.size,
    String sizeStringMessage,
    String sizeIntMessage,
    String sizeListError,
  }) {
    assert(size != null);

    _sizeStringError = DataRuleError(
      localizedFunction: (context) =>
          sizeStringMessage ??
          'La lunghezza del testo deve essere di $size caratteri',
    );
    _sizeIntError = DataRuleError(
      localizedFunction: (context) =>
          sizeIntMessage ?? 'Il valore dell\'intero deve essere $size',
    );
    _sizeListError = DataRuleError(
      localizedFunction: (context) =>
          sizeListError ?? 'La dimensione della lista deve essere $size',
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
    if (data.length != size) {
      throw _sizeStringError;
    }
    return data;
  }

  int _processInt(int data) {
    if (data != size) {
      throw _sizeIntError;
    }
    return data;
  }

  List _processList(List data) {
    if (data.length == size) {
      throw _sizeListError;
    }
    return data;
  }
}
