import 'package:faker/faker.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final faker = Faker();
  late SameRule rule;

  setUp(() {
    rule = SameRule();
  });

  test('if values are the same', () {
    final expected = faker.lorem.word();
    final value = (expected, expected);
    final result = rule.process(value);

    expect(expected, equals(result));
  });

  test('if values are not the same', () {
    final value = (faker.lorem.word(), faker.lorem.sentence());

    try {
      expect(rule.process(value), equals(0));
    } catch (error) {
      expect(error, isInstanceOf<SameRuleError>());
    }
  });
}