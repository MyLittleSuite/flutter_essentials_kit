import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';

/// Get the string without any leading and trailing whitespace.
class TrimRule extends DataRule<String, String> {
  @override
  String? process(String? data) {
    final processedData = data?.trim();
    return (processedData?.isEmpty ?? true) ? null : processedData;
  }
}
