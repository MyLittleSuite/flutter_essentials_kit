import 'package:faker/faker.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final faker = Faker();
  late TwoWayBinding<String> binding;
  late List<String?> values;

  setUp(() {
    binding = TwoWayBinding();
    values = faker.lorem.words(10);
  });

  test('set with some values', () {
    values.forEach((value) {
      binding.value = value;
      expect(binding.value, value);
    });
  });

  test('change with some values', () async {
    binding = binding.onChange((value) {
      expect(values.contains(value), isTrue);
    });

    final futureExpect = expectLater(binding.stream, emitsInOrder(values));
    values.forEach(binding.change);
    await futureExpect;
  });

  test('value with some values', () async {
    binding = binding.onChange((value) {
      expect(values.contains(value), isTrue);
    });

    final futureExpect = expectLater(binding.stream, emitsInOrder(values));
    for (final value in values) {
      binding.value = value;

      await Future.delayed(Duration(milliseconds: 250));

      expect(binding.value, equals(value));
    }
    await futureExpect;
  });

  test('bindDataRule with success', () async {
    binding = binding.bindDataRule(RequiredRule());

    final futureExpect = expectLater(binding.stream, emitsInOrder(values));
    values.forEach(binding.change);
    await futureExpect;
  });

  test('bindDataRule with error', () async {
    binding = binding.bindDataRule(RequiredRule());

    final futureExpect = expectLater(
      binding.stream,
      emitsError(isInstanceOf<RequiredRuleError>()),
    );
    binding.change(null);
    await futureExpect;
  });

  test('bindDataRule pipeline', () async {
    binding = binding.bindDataRule(TrimRule()).bindDataRule(LowerCaseRule());

    final futureExpect = expectLater(binding.stream, emitsInOrder(values));
    values.forEach((value) => binding.change(" ${value?.toUpperCase()} "));
    await futureExpect;
  });

  test('bindDataRule check is broadcast', () async {
    binding = binding.bindDataRule(_FakeRule());
    expect(binding.stream.isBroadcast, isTrue);
  });

  test('bindDataRule2 with error', () async {
    final binding2 = TwoWayBinding<String>().bindDataRule2(binding, SameRule());

    final futureExpect = expectLater(
      binding2.stream,
      emitsError(isInstanceOf<SameRuleError>()),
    );

    binding.value = null;
    binding2.value = '';
    await futureExpect;
  });

  test('bindDataRule2 check is broadcast', () async {
    binding = binding.bindDataRule2(binding, _FakeRule());
    expect(binding.stream.isBroadcast, isTrue);
  });
}

class _FakeRule<T> extends DataRule<T, T> {
  @override
  T? process(T? data) => data;
}
