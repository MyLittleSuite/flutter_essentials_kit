import 'dart:collection';
import 'dart:math' as math;

extension IterableFiltering<T> on Iterable<T> {
  /// Remove all null elements in this iterable.
  /// Example:
  ///   before: [1, 2, null, "12", null, 9129, "ciao", null, "come", null]
  ///   after: [1, 2, "12", 9129, "ciao", "come"]
  Iterable<T> filterNull() => where((element) => element != null);
}

/// Grouping elements using a criteria.
typedef IterableGroupingCriteria<K> = int Function(K, K);

extension IterableGrouping<T> on Iterable<T> {
  /// Group elements in this iterable.
  /// Specifying a sorting criteria, this function returns a sorted map by key.
  Map<K, List<T>> groupBy<K>(
    K Function(T) keyFunction, {
    IterableGroupingCriteria<K>? sortingCriteria,
  }) =>
      fold(
        sortingCriteria != null
            ? SplayTreeMap(sortingCriteria)
            : <K, List<T>>{},
        (Map<K, List<T>> map, T element) => map
          ..putIfAbsent(
            keyFunction(element),
            () => <T>[],
          ).add(element),
      );
}

extension IterableNum<N extends num> on Iterable<N> {
  /// Returns the lesser value in this iterable.
  /// If the iterable is empty, this function returns the specified ifEmpty parameter.
  N min({
    required N ifEmpty,
  }) =>
      isEmpty ? ifEmpty : reduce(math.min);

  /// Returns the greater value in this iterable.
  /// If the iterable is empty, this function returns the specified ifEmpty parameter.
  N max({
    required N ifEmpty,
  }) =>
      isEmpty ? ifEmpty : reduce(math.max);

  /// Returns the sum of all values in this iterable.
  /// If the iterable is empty, this function returns the specified ifEmpty parameter.
  N sum({
    required N ifEmpty,
  }) =>
      isEmpty ? ifEmpty : reduce((value, element) => (value + element) as N);

  /// Returns the subtraction of all values in this iterable.
  /// If the iterable is empty, this function returns the specified ifEmpty parameter.
  N subtract({
    required N ifEmpty,
  }) =>
      isEmpty ? ifEmpty : reduce((value, element) => (value - element) as N);
}
