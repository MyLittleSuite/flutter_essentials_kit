import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

class TwoWayBinding<T> {
  BehaviorSubject<T> _subject;
  Stream<T> _stream;

  TwoWayBinding({T seeded}) {
    _subject = seeded != null
        ? BehaviorSubject<T>.seeded(seeded)
        : BehaviorSubject<T>();
    _stream = _subject.stream;
  }

  final TextEditingController textController = TextEditingController();

  Stream<T> get stream => _stream;

  T get value => _subject.value;

  set value(T newValue) {
    textController.text = newValue?.toString();
    _subject.value = newValue;
  }

  Function(T) get change => _subject.sink.add;

  TwoWayBinding<T> onChange(void Function(T changed) callback) {
    _stream = _stream.transform(
      StreamTransformer.fromHandlers(handleData: (data, sink) {
        callback(data);
        sink.add(data);
      }),
    );

    return this;
  }

  TwoWayBinding<T> bindDataRule(DataRule<T, T> rule) {
    _stream = _stream.transform(
      StreamTransformer.fromHandlers(handleData: (data, sink) {
        try {
          sink.add(rule.process(data));
        } on DataRuleError catch (error) {
          sink.addError(error);
        }
      }),
    );

    return this;
  }

  TwoWayBinding<T> bindDataRule2<S>(
    TwoWayBinding<S> second,
    DataRule<Tuple2<T, S>, T> rule,
  ) {
    _stream = Rx.combineLatest2<T, S, Tuple2<T, S>>(
      _stream,
      second._stream,
      (first, second) => Tuple2(first, second),
    ).transform(StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        try {
          sink.add(rule.process(data));
        } on DataRuleError catch (error) {
          sink.addError(error);
        }
      },
    ));

    return this;
  }

  Future<void> close() async => await _subject.close();
}
