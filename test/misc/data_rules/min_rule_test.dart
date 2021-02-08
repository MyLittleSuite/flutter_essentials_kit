import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MinRule rule;
  num min = 2;

  setUp(() {
    rule = MinRule(min);
  });

  test('if value is a valid number string', () {
    [min, min + 1].map((e) => e.toString()).forEach((string) {
      final result = rule.process(string);
      expect(result, equals(string));
    });
  });

  test('if value is a valid string', () {
    ["f2", "foo"].forEach((string) {
      final result = rule.process(string);
      expect(result, equals(string));
    });
  });

  test('if value is a valid number', () {
    [min, min + 1].forEach((number) {
      final result = rule.process(number);
      expect(result, equals(number));
    });
  });

  test('if value is a valid list', () {
    [
      List.generate(min, (index) => index),
      List.generate(min + 1, (index) => index),
    ].forEach((list) {
      final result = rule.process(list);
      expect(result, equals(list));
    });
  });

  test('if value is an invalid number string', () {
    [min - 1, min - 2].map((e) => e.toString()).forEach((string) {
      try {
        expect(rule.process(string), isFalse);
      } catch (error) {
        expect(error, isInstanceOf<MinRuleError>());
      }
    });
  });

  test('if value is an invalid string', () {
    ["1", ""].forEach((string) {
      try {
        expect(rule.process(string), isFalse);
      } catch (error) {
        expect(error, isInstanceOf<MinRuleError>());
      }
    });
  });

  test('if value is an invalid number', () {
    [min - 1, min - 2].forEach((string) {
      try {
        expect(rule.process(string), isFalse);
      } catch (error) {
        expect(error, isInstanceOf<MinRuleError>());
      }
    });
  });

  test('if value is an invalid list', () {
    [
      List.generate(min - 1, (index) => index),
      List.generate(min - 2, (index) => index),
    ].forEach((list) {
      try {
        expect(rule.process(list), isFalse);
      } catch (error) {
        expect(error, isInstanceOf<MinRuleError>());
      }
    });
  });

  test('if value is unknown (skipped)', () {
    [true, false, Object()].forEach((element) {
      rule.process(element);
    });
  });
}
