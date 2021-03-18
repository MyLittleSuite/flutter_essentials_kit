import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/extensions/commons.dart';

/// Create a courtesy widget with an optional leading widget, a required title, optional message, optional action and onPressed callback on that action.
class CourtesyWidget extends StatelessWidget {
  final Widget? leading;
  final String title;
  final String? message;
  final String? action;
  final VoidCallback? onPressed;
  final EdgeInsets padding;
  final EdgeInsets marginBetweenWidgets;

  CourtesyWidget({
    Key? key,
    this.leading,
    required this.title,
    this.message,
    this.action,
    this.onPressed,
    this.padding = const EdgeInsets.all(16),
    this.marginBetweenWidgets = const EdgeInsets.only(top: 8),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _leading(context),
            _title(context),
            _message(context),
            _action(context),
          ],
        ),
      );

  Widget _leading(BuildContext context) => Container(
        child: leading?.let((it) => it),
      );

  Widget _title(BuildContext context) => Container(
        margin: leading?.let((_) => marginBetweenWidgets) ?? EdgeInsets.zero,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.center,
        ),
      );

  Widget _message(BuildContext context) => Container(
        margin: message?.let((_) => marginBetweenWidgets) ?? EdgeInsets.zero,
        child: message?.let(
          (it) => Text(
            it,
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
        ),
      );

  Widget _action(BuildContext context) => Container(
        margin: action?.let((_) => marginBetweenWidgets) ?? EdgeInsets.zero,
        child: action?.let(
          (it) => ElevatedButton(
            child: Text(action!),
            onPressed: onPressed,
          ),
        ),
      );
}
