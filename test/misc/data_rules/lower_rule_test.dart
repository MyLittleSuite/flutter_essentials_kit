import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late LowerCaseRule rule;

  setUp(() {
    rule = LowerCaseRule();
  });

  test('if value is a null value', () {
    expect(rule.process(null), isNull);
  });

  test('if value is an empty string', () {
    expect(rule.process(""), "");
  });

  test('if value is a valid string', () {
    expect(rule.process("DaTa"), equals("data"));
  });

  test('if value is a valid string with some spaces', () {
    expect(rule.process(" dATa"), equals(" data"));
    expect(rule.process("DatA "), equals("data "));
    expect(rule.process(" DATA "), equals(" data "));
  });
}