import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

class TwoWayBinding<T> {
  BehaviorSubject<T> _subject;
  Stream<T> _stream;

  final TextEditingController textController;

  TwoWayBinding({T seeded})
      : this._(
          seeded != null
              ? BehaviorSubject<T>.seeded(seeded)
              : BehaviorSubject<T>(),
          TextEditingController(),
        );

  TwoWayBinding._(this._subject, this.textController) {
    _stream = _subject.stream;
  }

  T get value => _subject.value;

  set value(T newValue) {
    textController.text = newValue?.toString();
    _subject.value = newValue;
  }

  Stream<T> get stream => _stream;

  Function(T) get change => _subject.sink.add;

  TwoWayBinding<T> onChange(void Function(T changed) callback) =>
      TwoWayBinding._(
        _subject.map((event) {
          callback(event);
          return event;
        }),
        textController,
      );

  TwoWayBinding<T> bindDataRule(DataRule<T, T> rule) =>
      TwoWayBinding._(_subject.map(rule.process), textController);

  TwoWayBinding<T> bindDataRule2<S>(
    TwoWayBinding<S> second,
    DataRule<Tuple2<T, S>, T> rule,
  ) =>
      TwoWayBinding._(
        Rx.combineLatest2<T, S, Tuple2<T, S>>(
          stream,
          second.stream,
          (first, second) => Tuple2(first, second),
        ).map(rule.process),
        textController,
      );

  Future<void> close() async => await _subject.close();
}
