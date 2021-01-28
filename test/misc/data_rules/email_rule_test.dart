import 'package:faker/faker.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Faker faker;
  EmailRule rule;

  setUp(() {
    faker = Faker();
    rule = EmailRule();
  });

  test('if email is invalid', () {
    [
      "",
      " ",
      " foo",
      "foo ",
      " foo ",
      " ${faker.internet.email()}",
      "${faker.internet.email()} ",
      " ${faker.internet.email()} ",
    ].forEach((data) {
      try {
        expect(rule.process(data), equals(0));
      } catch (error) {
        expect(error, isInstanceOf<EmailRuleError>());
      }
    });
  });

  test('if email is valid', () {
    final email = faker.internet.email();
    final result = rule.process(email);

    expect(email, equals(result));
  });
}
