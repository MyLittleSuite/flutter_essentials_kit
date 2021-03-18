import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/misc/localized.dart';
import 'package:flutter_essentials_kit/misc/two_way_binding.dart';

/// Typedef of [TwoWayBindingBuilder].
/// The [data] and [error] can be null. The other parameters are not-null.
typedef TwoWayBindingDataBuilder<T> = Widget Function(
  BuildContext context,
  TextEditingController controller,
  T? data,
  Function(T?) onChange,
  Localized? error,
);

/// Widget that builds itself based on the latest data of a [TwoWayBinding].
class TwoWayBindingBuilder<T> extends StatelessWidget {
  final TwoWayBinding<T> binding;
  final TwoWayBindingDataBuilder<T> builder;

  TwoWayBindingBuilder({
    Key? key,
    required this.binding,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => StreamBuilder<T?>(
        stream: binding.stream,
        builder: (context, snapshot) => builder(
          context,
          binding.textController,
          snapshot.data,
          binding.change,
          snapshot.error as Localized?,
        ),
      );
}
