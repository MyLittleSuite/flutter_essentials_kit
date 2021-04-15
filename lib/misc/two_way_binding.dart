import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/errors/data_rules/data_rule_error.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

/// A controller to perform 2 way binding between the field and the GUI element.
class TwoWayBinding<T> {
  /// A controller for an editable text field.
  final TextEditingController textController = TextEditingController();

  late BehaviorSubject<T?> _subject;
  late Stream<T?> _stream;

  TwoWayBinding({T? seeded}) {
    _subject = seeded != null
        ? BehaviorSubject<T?>.seeded(seeded)
        : BehaviorSubject<T?>();
    _stream = _subject.stream;
  }

  /// Transform this two way binding in stream.
  Stream<T?> get stream => _stream;

  /// Returns the current value.
  T? get value => _subject.value;

  /// Set a new value. It will override the current value.
  set value(T? newValue) {
    textController.text = newValue?.toString() ?? '';
    _subject.add(newValue);
  }

  /// Function to perform the change of the data.
  void Function(T?) get change => _subject.sink.add;

  /// Add a change callback to perform some editing on other fields.
  TwoWayBinding<T> onChange(void Function(T? changed) callback) {
    _stream = _stream.transform<T?>(
      StreamTransformer<T?, T?>.fromHandlers(handleData: (data, sink) {
        callback(data);
        sink.add(data);
      }),
    );

    return this;
  }

  /// Add a new data rule.
  TwoWayBinding<T> bindDataRule(DataRule<T, T> rule) {
    _stream = _stream.transform<T?>(
      StreamTransformer<T?, T?>.fromHandlers(handleData: (data, sink) {
        try {
          sink.add(rule.process(data));
        } on DataRuleError catch (error) {
          sink.addError(error);
        }
      }),
    );

    return this;
  }

  /// Add a new data rule, combined with another [TwoWayBinding].
  TwoWayBinding<T> bindDataRule2<S>(
    TwoWayBinding<S> second,
    DataRule<Tuple2<T?, S?>, T> rule,
  ) {
    _stream = Rx.combineLatest2<T?, S?, Tuple2<T?, S?>>(
      _stream,
      second._stream,
      (first, second) => Tuple2<T?, S?>(first, second),
    ).asBroadcastStream().transform(StreamTransformer.fromHandlers(
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

  /// Closes the two way binding.
  Future<void> close() async => await _subject.close();
}
