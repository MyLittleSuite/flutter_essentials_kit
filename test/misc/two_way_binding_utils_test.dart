import 'package:faker/faker.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final faker = Faker();
  late TwoWayBinding<String> binding;
  late TwoWayBinding<String> binding2;

  setUp(() {
    binding = TwoWayBinding<String>().bindDataRule(RequiredRule());
    binding2 = TwoWayBinding<String>().bindDataRule(RequiredRule());
  });

  test('validate', () {
    expect(
      TwoWayBindingUtils.validate([binding, binding2]),
      emitsInOrder([
        emits(true),
        emits(false),
        emits(false),
        emits(false),
        emits(true),
      ]),
    );

    binding.value = faker.lorem.word();
    binding2.value = faker.lorem.word();
    binding.value = null;
    binding2.value = null;
    binding.value = faker.lorem.word();
    binding2.value = faker.lorem.word();
  });
}
