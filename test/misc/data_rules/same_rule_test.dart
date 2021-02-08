import 'package:faker/faker.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tuple/tuple.dart';

void main() {
  Faker faker;
  SameRule rule;

  setUp(() {
    faker = Faker();
    rule = SameRule();
  });

  test('if values are the same', () {
    final expected = faker.lorem.word();
    final value = Tuple2(expected, expected);
    final result = rule.process(value);

    expect(expected, equals(result));
  });

  test('if values are not the same', () {
    final value = Tuple2(faker.lorem.word(), faker.lorem.sentence());

    try {
      expect(rule.process(value), equals(0));
    } catch (error) {
      expect(error, isInstanceOf<SameRuleError>());
    }
  });
}