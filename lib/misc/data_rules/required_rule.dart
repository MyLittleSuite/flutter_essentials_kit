import 'package:flutter_essentials_kit/errors/data_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';

class RequiredRule<T> extends DataRule<T, T> {
  DataRuleError _requiredError;

  RequiredRule({String errorMessage}) {
    _requiredError = DataRuleError(
      localizedFunction: (context) =>
          errorMessage ?? 'Questo campo è richiesto',
    );
  }

  @override
  T process(T data) {
    if (data == null) {
      throw _requiredError;
    }

    if (data is String) {
      return _processString(data) as T;
    } else if (data is List) {
      return _processList(data) as T;
    }

    return data;
  }

  String _processString(String data) {
    final processedData = data.trim();
    if (processedData.isEmpty) {
      throw _requiredError;
    }

    return processedData;
  }

  List _processList(List data) {
    if (data.isEmpty) {
      throw _requiredError;
    }

    return data;
  }
}
