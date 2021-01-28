import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:meta/meta.dart';

/// Min value data rule error.
class MinRuleError extends DataRuleError {
  MinRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  MinRuleError.string({@required int min})
      : this(
          localizedMessage: (context) =>
              'La lunghezza del testo non può essere minore di $min caratteri',
        );

  MinRuleError.number({@required int min})
      : this(
          localizedMessage: (context) =>
              'Il valore del numero non può essere minore di $min',
        );

  MinRuleError.list({@required int min})
      : this(
          localizedMessage: (context) =>
              'La dimensione della lista non può essere minore di $min',
        );
}
