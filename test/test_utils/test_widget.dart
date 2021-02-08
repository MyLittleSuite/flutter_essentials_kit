import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/localizations/flutter_essentials_kit_localizations.dart';

class TestWidget extends StatelessWidget {
  final Widget child;

  TestWidget({Key key, @required this.child}) : super(key: key) {
    assert(child != null);
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: child,
        localizationsDelegates: [
          FlutterEssentialsKitLocalizations.delegate,
        ],
      );
}
