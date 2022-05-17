import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late UpperCaseRule rule;

  setUp(() {
    rule = UpperCaseRule();
  });

  test('if value is a null value', () {
    expect(rule.process(null), isNull);
  });

  test('if value is an empty string', () {
    expect(rule.process(""), "");
  });

  test('if value is a valid string', () {
    expect(rule.process("DaTa"), equals("DATA"));
  });

  test('if value is a valid string with some spaces', () {
    expect(rule.process(" dATa"), equals(" DATA"));
    expect(rule.process("DatA "), equals("DATA "));
    expect(rule.process(" DATA "), equals(" DATA "));
  });
}
