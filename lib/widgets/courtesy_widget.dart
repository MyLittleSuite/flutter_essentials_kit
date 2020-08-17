import 'package:flutter/material.dart';

/// Create a courtesy widget with a required title, optional message, optional action and onPressed callback on that action.
class CourtesyWidget extends StatelessWidget {
  final String title;
  final String message;
  final String action;
  final VoidCallback onPressed;

  CourtesyWidget({
    Key key,
    @required this.title,
    this.message,
    this.action,
    this.onPressed,
  }) : super(key: key) {
    assert(title != null);
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _title(context),
            _message(context),
            _action(context),
          ],
        ),
      );

  Widget _title(BuildContext context) => Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.center,
        ),
      );

  Widget _message(BuildContext context) => message != null
      ? Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            message,
          ),
        )
      : Container();

  Widget _action(BuildContext context) => action != null
      ? Padding(
          padding: EdgeInsets.only(top: 8),
          child: RaisedButton(
            child: Text(action),
            onPressed: onPressed,
          ),
        )
      : Container();
}
