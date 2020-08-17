import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  final Widget child;

  TestWidget({Key key, @required this.child}) : super(key: key) {
    assert(child != null);
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: child,
      );
}
