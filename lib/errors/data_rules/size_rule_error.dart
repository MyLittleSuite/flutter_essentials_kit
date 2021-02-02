import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations.dart';

/// Size value data rule error.
class SizeRuleError extends DataRuleError {
  SizeRuleError({
    String Function(BuildContext context) localizedMessage,
  }) : super(localizedMessage: localizedMessage);

  SizeRuleError.string({@required int size})
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  .ruleSizeStringLength(size),
        );

  SizeRuleError.number({@required int size})
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  .ruleSizeNumber(size),
        );

  SizeRuleError.list({@required int size})
      : this(
          localizedMessage: (context) =>
              FlutterEssentialsKitLocalizations.of(context)
                  .ruleSizeListLength(size),
        );
}
