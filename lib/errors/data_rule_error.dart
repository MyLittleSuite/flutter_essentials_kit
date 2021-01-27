import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/localized_error.dart';

typedef DataRuleLocalizedFunction = String Function(BuildContext context);

class DataRuleError extends LocalizedError {
  final DataRuleLocalizedFunction localizedFunction;

  DataRuleError({@required this.localizedFunction}) {
    assert(localizedFunction != null);
  }

  @override
  String localizedString(BuildContext context) => localizedFunction(context);
}
