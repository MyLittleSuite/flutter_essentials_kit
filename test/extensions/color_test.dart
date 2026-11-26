import 'package:material_ui/material_ui.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('textColorBasedOnLuminance', () {
    expect(Colors.black, Colors.white.textColorBasedOnLuminance());
    expect(Colors.white, Colors.black.textColorBasedOnLuminance());
  });
}
