import 'package:flutter/material.dart';

/// Create a space between widgets.
class Spacing extends StatelessWidget {
  final double horizontal;
  final double vertical;

  const Spacing({
    Key? key,
    this.horizontal = 0,
    this.vertical = 0,
  }) : super(key: key);

  const Spacing.horizontal(double value, {Key? key})
      : this(key: key, horizontal: value);

  const Spacing.vertical(double value, {Key? key})
      : this(key: key, vertical: value);

  @override
  Widget build(BuildContext context) => SizedBox(
        width: horizontal,
        height: vertical,
      );
}
