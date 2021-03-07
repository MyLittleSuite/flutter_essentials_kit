import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late RequiredRule rule;

  setUp(() {
    rule = RequiredRule();
  });

  test('if value is null', () {
    try {
      expect(rule.process(null), isFalse);
    } catch (error) {
      expect(error, isInstanceOf<RequiredRuleError>());
    }
  });

  test('if value is valid string', () {
    [
      "valid_string",
      " valid_string",
      "valid_string ",
      " valid_string ",
      "  valid_string  ",
    ].forEach((element) {
      final result = rule.process(element);
      expect(result, equals(element.trim()));
    });
  });

  test('if value is valid list', () {
    final list = List.generate(10, (index) => index);
    final result = rule.process(list);
    expect(result, equals(list));
  });

  test('if value is invalid string', () {
    ["", " ", "   "].forEach((element) {
      try {
        expect(rule.process(element), isFalse);
      } catch (error) {
        expect(error, isInstanceOf<RequiredRuleError>());
      }
    });
  });

  test('if value is invalid list', () {
    [[]].forEach((element) {
      try {
        expect(rule.process(element), isFalse);
      } catch (error) {
        expect(error, isInstanceOf<RequiredRuleError>());
      }
    });
  });

  test('if value is unknown (skipped)', () {
    [true, false, Object()].forEach((element) {
      rule.process(element);
    });
  });
}
