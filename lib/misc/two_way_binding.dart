import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_essentials_kit/misc/data_rules/data_rule.dart';
import 'package:rxdart/rxdart.dart';

/// A controller to perform 2 way binding between the field and the GUI element.
class TwoWayBinding<T> {
  /// A controller for an editable text field.
  final TextEditingController textController = TextEditingController();

  late BehaviorSubject<T?> _subject;
  late Stream<T?> _stream;

  T? _value;

  TwoWayBinding({T? seeded}) {
    _subject = seeded != null
        ? BehaviorSubject<T?>.seeded(seeded)
        : BehaviorSubject<T?>();
    _stream = _subject.stream.shareValue();

    _value = seeded;
  }

  /// Transform this two way binding in stream.
  Stream<T?> get stream => _stream;

  /// Returns the current value.
  T? get value => _value;

  /// Set a new value. It will override the current value.
  set value(T? newValue) {
    textController.text = newValue?.toString() ?? '';

    _value = newValue;
    _subject.add(newValue);
  }

  /// Function to perform the change of the data.
  void Function(T?) get change => (newValue) {
        _value = newValue;
        _subject.add(newValue);
      };

  /// Add a change callback to perform some editing on other fields.
  TwoWayBinding<T> onChange(void Function(T? changed) callback) {
    _stream = _stream.map((data) {
      _value = data;
      callback(data);
      return _value;
    }).shareValue();

    return this;
  }

  /// Add a new data rule.
  TwoWayBinding<T> bindDataRule(DataRule<T, T> rule) {
    _stream = _stream.map((data) {
      _value = data;
      _value = rule.process(data);
      return _value;
    }).shareValue();

    return this;
  }

  /// Add a new data rule, combined with another [TwoWayBinding].
  TwoWayBinding<T> bindDataRule2<S>(
    TwoWayBinding<S> second,
    DataRule<(T?, S?), T> rule,
  ) {
    _stream = Rx.combineLatest2<T?, S?, (T?, S?)>(
      _stream,
      second._stream,
      (first, second) => (first, second),
    ).map((data) {
      _value = data.$1;
      _value = rule.process(data);
      return _value;
    }).shareValue();

    return this;
  }

  /// Closes the two way binding.
  Future<void> close() async {
    await _subject.close();
  }
}
