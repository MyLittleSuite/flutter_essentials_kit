import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('let returns this', () {
    expect(7.let((value) => value), equals(7));
  });

  test('let returns transformed this', () {
    expect("7".let(int.tryParse), equals(7));
  });

  test('let null returns this', () {
    expect(null.let((it) => it), isNull);
  });

  test('let null returns transformed this', () {
    expect(null.let((it) => 10), equals(10));
  });
}
