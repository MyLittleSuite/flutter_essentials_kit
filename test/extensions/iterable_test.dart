import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('filterNull', () {
    final elements = [1, 2, null, "12", null, 9129, "ciao", null, "come", null];
    final expectedElements = [1, 2, "12", 9129, "ciao", "come"];

    final result = elements.filterNull().toList();
    expect(result, equals(expectedElements));
  });

  test('groupBy no sorting', () {
    final expectedElements = {
      2: [2, 2, 2],
      1: [1, 1, 1],
      3: [3, 3, 3],
    };
    final elements = [1, 2, 3, 1, 2, 3, 1, 2, 3];

    final result = elements.groupBy((element) => element);
    expect(result, equals(expectedElements));
  });

  test('groupBy sorting', () {
    final expectedElements = {
      1: [1, 1, 1],
      2: [2, 2, 2],
      3: [3, 3, 3],
    };
    final elements = [1, 2, 3, 1, 2, 3, 1, 2, 3];

    final result = elements.groupBy<int>(
      (element) => element,
      sortingCriteria: (first, second) => first.compareTo(second),
    );
    expect(result, equals(expectedElements));
  });
}
