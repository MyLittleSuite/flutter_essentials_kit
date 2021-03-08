import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/localized_error.dart';

/// Custom localized message type.
typedef DataRuleErrorLocalizedMessage = String? Function(BuildContext context);

/// Genetic error class for data broken rule.
abstract class DataRuleError extends LocalizedError {
  final DataRuleErrorLocalizedMessage? localizedMessage;

  DataRuleError({this.localizedMessage});

  @override
  String? localizedString(BuildContext context) =>
      localizedMessage?.call(context);
}
