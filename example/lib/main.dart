import 'package:example/pages/courtesy_widget_page.dart';
import 'package:example/pages/localizations_page.dart';
import 'package:example/pages/login_page.dart';
import 'package:example/pages/main_page.dart';
import 'package:example/pages/two_way_binding_page.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';

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
          ...GlobalMaterialLocalizations.delegates,
        ],
        routes: {
          '/': (context) => MainPage(),
          '/courtesy_widgets': (context) => CourtesyWidgetPage(),
          '/two_way_binding': (context) => TwoWayBindingPage(),
          '/login': (context) => LoginPage(),
          '/localizations': (context) => LocalizationsPage(),
        },
        initialRoute: '/',
      );
}
