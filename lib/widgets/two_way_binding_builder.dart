import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/localized_error.dart';
import 'package:flutter_essentials_kit/misc/two_way_binding.dart';

class TwoWayBindingWidget<T> extends StatelessWidget {
  final TwoWayBinding<T> binding;
  final Widget Function(BuildContext context, T data, Function(T) onChange,
      LocalizedError error) builder;

  TwoWayBindingWidget({
    Key key,
    @required this.binding,
    @required this.builder,
  }) : super(key: key) {
    assert(binding != null);
    assert(builder != null);
  }

  @override
  Widget build(BuildContext context) => StreamBuilder<T>(
        stream: binding.stream,
        builder: (context, snapshot) => builder(
          context,
          snapshot.data,
          binding.change,
          snapshot.error,
        ),
      );
}
