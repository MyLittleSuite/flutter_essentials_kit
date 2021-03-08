import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final int size = 5;
  late SizeRule rule;
  late List<int> invalidSizes;

  setUp(() {
    rule = SizeRule(size);

    invalidSizes = [
      size - 3,
      size - 2,
      size - 1,
      size + 1,
      size + 2,
      size + 3,
    ];
  });

  test('if value is a valid string length', () {
    final expected = List.generate(size, (_) => "F").join();
    final result = rule.process(expected);

    expect(result, equals(result));
  });

  test('if value is a valid num in string', () {
    final result = rule.process(size.toString());
    expect(result, equals(size.toString()));
  });

  test('if value is a valid num', () {
    final result = rule.process(size);
    expect(result, equals(size));
  });

  test('if value is a valid list length', () {
    final expected = List.generate(size, (index) => index);
    final result = rule.process(expected);

    expect(result, equals(expected));
  });

  test('if value is an invalid string length', () {
    invalidSizes.map((e) => List.generate(e, (_) => "F").join()).forEach(
      (expected) {
        try {
          expect(rule.process(expected), equals(0));
        } catch (error) {
          expect(error, isInstanceOf<SizeRuleError>());
        }
      },
    );
  });

  test('if value is an invalid num in string', () {
    invalidSizes.map((e) => e.toString()).forEach(
      (expected) {
        try {
          expect(rule.process(expected), equals(0));
        } catch (error) {
          expect(error, isInstanceOf<SizeRuleError>());
        }
      },
    );
  });

  test('if value is a invalid num', () {
    invalidSizes.forEach((size) {
      try {
        expect(rule.process(size), equals(0));
      } catch (error) {
        expect(error, isInstanceOf<SizeRuleError>());
      }
    });
  });

  test('if value is a invalid list length', () {
    invalidSizes
        .map((e) => List.generate(e, (index) => index))
        .forEach((expected) {
      try {
        expect(rule.process(expected), equals(0));
      } catch (error) {
        expect(error, isInstanceOf<SizeRuleError>());
      }
    });
  });

  test('if value is unknown (skipped)', () {
    [true, false, Object()].forEach((element) {
      rule.process(element);
    });
  });
}
