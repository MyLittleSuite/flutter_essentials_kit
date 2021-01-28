import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MaxRule rule;
  num max = 5;

  setUp(() {
    rule = MaxRule(max: max);
  });

  test('if value is a valid number string', () {
    [max, max - 1].map((e) => e.toString()).forEach((string) {
      final result = rule.process(string);
      expect(result, equals(string));
    });
  });

  test('if value is a valid string', () {
    ["foo", "foo4", "fooo5"].forEach((string) {
      final result = rule.process(string);
      expect(result, equals(string));
    });
  });

  test('if value is a valid number', () {
    [max, max - 1].forEach((number) {
      final result = rule.process(number);
      expect(result, equals(number));
    });
  });

  test('if value is a valid list', () {
    [
      List.generate(max - 1, (index) => index),
      List.generate(max, (index) => index),
    ].forEach((list) {
      final result = rule.process(list);
      expect(result, equals(list));
    });
  });

  test('if value is an invalid number string', () {
    [max + 1, max + 2].map((e) => e.toString()).forEach((string) {
      try {
        expect(rule.process(string), isFalse);
      } catch (error) {
        expect(error, isInstanceOf<MaxRuleError>());
      }
    });
  });

  test('if value is an invalid string', () {
    ["foooo6", "fooooo7"].forEach((string) {
      try {
        expect(rule.process(string), isFalse);
      } catch (error) {
        expect(error, isInstanceOf<MaxRuleError>());
      }
    });
  });

  test('if value is an invalid number', () {
    [max + 1, max + 2].forEach((string) {
      try {
        expect(rule.process(string), isFalse);
      } catch (error) {
        expect(error, isInstanceOf<MaxRuleError>());
      }
    });
  });

  test('if value is an invalid list', () {
    [
      List.generate(max + 1, (index) => index),
      List.generate(max + 2, (index) => index),
    ].forEach((list) {
      try {
        expect(rule.process(list), isFalse);
      } catch (error) {
        expect(error, isInstanceOf<MaxRuleError>());
      }
    });
  });

  test('if value is unknown (skipped)', () {
    [true, false, Object()].forEach((element) {
      rule.process(element);
    });
  });
}
