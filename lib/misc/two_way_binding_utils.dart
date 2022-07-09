import 'package:flutter_essentials_kit/misc/two_way_binding.dart';
import 'package:rxdart/rxdart.dart';

mixin TwoWayBindingUtils {
  /// Perform a validation against the provided bindings.
  static Stream<bool> validate(
    List<TwoWayBinding<Object>> bindings, {
    bool initialValue = false,
  }) =>
      Rx.combineLatest<Object?, bool>(
        bindings.map((binding) => binding.stream),
        (values) {
          var isValid = true;
          values.asMap().forEach((index, value) {
            isValid &= value == bindings[index].value;
          });

          return isValid;
        },
      ).onErrorReturn(false).shareValueSeeded(initialValue).asBroadcastStream();
}
