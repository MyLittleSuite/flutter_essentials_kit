import 'package:example/pages/courtesy_widget_page.dart';
import 'package:example/pages/main_page.dart';
import 'package:example/pages/two_way_binding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        localizationsDelegates: [
          FlutterEssentialsKitLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        routes: {
          '/': (context) => MainPage(),
          '/courtesy_widgets': (context) => CourtesyWidgetPage(),
          '/two_way_binding': (context) => TwoWayBindingPage(),
        },
        initialRoute: '/',
      );
}
