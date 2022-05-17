import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';

/// Get the string in upper case.
class UpperCaseRule extends DataRule<String, String> {
  @override
  String? process(String? data) => data?.toUpperCase();
}
