import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late ConfirmedRule rule;

  setUp(() {
    rule = ConfirmedRule();
  });

  test('if value is true', () {
    final result = rule.process(true);
    expect(result, isTrue);
  });

  test('if value is false', () {
    try {
      expect(rule.process(false), equals(0));
    } catch (error) {
      expect(error, isInstanceOf<ConfirmedRuleError>());
    }
  });
}
