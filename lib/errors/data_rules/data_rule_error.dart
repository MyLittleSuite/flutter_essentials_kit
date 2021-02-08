import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/localized_error.dart';

/// Genetic error class for data broken rule.
abstract class DataRuleError extends LocalizedError {
  final String Function(BuildContext context) localizedMessage;

  DataRuleError({this.localizedMessage});

  @override
  String localizedString(BuildContext context) =>
      localizedMessage != null ? localizedMessage(context) : null;
}
