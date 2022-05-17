import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';

/// Get the string in lower case.
class LowerCaseRule extends DataRule<String, String> {
  @override
  String? process(String? data) => data?.toLowerCase();
}
