import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';

class CourtesyWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'Title'),
                Tab(text: 'Title + message'),
                Tab(text: 'Title + message + disabled action'),
                Tab(text: 'Title + message + action'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CourtesyWidget(title: 'Just a title'),
              CourtesyWidget(
                title: 'Just a title',
                message: 'Just a message',
              ),
              CourtesyWidget(
                title: 'Just a title',
                message: 'Just a message',
                action: 'Just a disabled action',
              ),
              CourtesyWidget(
                title: 'Just a title',
                message: 'Just a message',
                action: 'Just an action',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Action pressed!'),
                      actions: [
                        FlatButton(
                          child: Text('OK'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      );
}
