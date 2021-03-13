import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TrimRule rule;

  setUp(() {
    rule = TrimRule();
  });

  test('if value is a null value', () {
    expect(rule.process(null), isNull);
  });

  test('if value is an empty string', () {
    expect(rule.process(""), isNull);
  });

  test('if value is a string with some spaces', () {
    expect(rule.process(" "), isNull);
    expect(rule.process("  "), isNull);
    expect(rule.process("   "), isNull);
    expect(rule.process("    "), isNull);
  });

  test('if value is a valid string', () {
    expect(rule.process("data"), equals("data"));
  });

  test('if value is a valid string with some spaces', () {
    expect(rule.process(" data"), equals("data"));
    expect(rule.process("data "), equals("data"));
    expect(rule.process(" data "), equals("data"));
  });
}