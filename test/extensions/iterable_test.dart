import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  List elements;
  List expectedElements;

  setUp(() {
    elements = [1, 2, null, "12", null, 9129, "ciao", null, "come", null];
    expectedElements = [1, 2, "12", 9129, "ciao", "come"];
  });

  test('filterNull()', () {
    final result = elements.filterNull().toList();
    expect(result, equals(expectedElements));
  });
}
