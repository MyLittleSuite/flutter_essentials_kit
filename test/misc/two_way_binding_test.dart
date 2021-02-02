import 'package:faker/faker.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Faker faker;
  TwoWayBinding<String> binding;
  List<String> values;

  setUp(() {
    faker = Faker();
    binding = TwoWayBinding();
    values = faker.lorem.words(10);
  });

  test('change with some values', () async {
    binding = binding.onChange((value) {
      print(value);
      expect(values.contains(value), isTrue);
    });

    final futureExpect = expectLater(binding.stream, emitsInOrder(values));
    values.forEach(binding.change);
    await futureExpect;
  });

  test('onChange with some values', () {
    binding = binding.onChange((value) {
      print(value);


    });
  });
}