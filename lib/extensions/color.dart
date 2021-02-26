import 'package:flutter/material.dart';

extension ColorCommons on Color {
  /// Calculate the text color based on the luminance of this.
  /// The function is useful when this instance is a background color and you want to calculate the correct text color.
  Color textColorBasedOnLuminance({
    double treshold = 0.5,
    Color darkColor = Colors.black,
    Color lightColor = Colors.white,
  }) =>
      computeLuminance() > treshold ? darkColor : lightColor;
}
