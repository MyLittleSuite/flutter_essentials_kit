import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';

/// Definition of a data rule, used to process and validate data.
abstract class DataRule<F, T> {

  /// Process and validate data. This method must not return null.
  /// Throws a generic [DataRuleError] if the data is not valid.
  T process(F data);
}