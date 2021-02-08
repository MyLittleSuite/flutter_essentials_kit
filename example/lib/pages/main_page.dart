import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
          children: [
            ListTile(
              title: Text('CourtesyWidget'),
              onTap: () => Navigator.pushNamed(context, '/courtesy_widgets'),
            ),
            ListTile(
              title: Text('TwoWayBinding'),
              onTap: () => Navigator.pushNamed(context, '/two_way_binding'),
            ),
          ],
        ),
      );
}
