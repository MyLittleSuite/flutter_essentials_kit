import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:meta/meta.dart';

/// Max value data rule error.
class MaxRuleError extends DataRuleError {
  MaxRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  MaxRuleError.string({@required int max})
      : this(
          localizedMessage: (context) =>
              'La lunghezza del testo non può essere maggiore di $max caratteri',
        );

  MaxRuleError.number({@required int max})
      : this(
          localizedMessage: (context) =>
              'Il valore del numero non può essere maggiore di $max',
        );

  MaxRuleError.list({@required int max})
      : this(
          localizedMessage: (context) =>
              'La dimensione della lista non può essere maggiore di $max',
        );
}
