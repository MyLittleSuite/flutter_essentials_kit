import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';

/// Size value data rule error.
class SizeRuleError extends DataRuleError {
  SizeRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  SizeRuleError.string({@required int size})
      : this(
          localizedMessage: (context) =>
              'La lunghezza del testo deve essere di $size caratteri',
        );

  SizeRuleError.number({@required int size})
      : this(
          localizedMessage: (context) =>
              'Il valore del numero deve essere $size',
        );

  SizeRuleError.list({@required int size})
      : this(
          localizedMessage: (context) =>
              'La dimensione della lista deve essere $size',
        );
}
