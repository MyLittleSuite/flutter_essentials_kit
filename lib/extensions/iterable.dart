import 'dart:collection';

extension IterableFiltering<T> on Iterable<T> {
  /// Remove all null elements in this iterable.
  /// Example:
  ///   before: [1, 2, null, "12", null, 9129, "ciao", null, "come", null]
  ///   after: [1, 2, "12", 9129, "ciao", "come"]
  Iterable<T> filterNull() => where((element) => element != null);
}

extension IterableGrouping<T> on Iterable<T> {
  /// Group elements in this iterable.
  /// Specifying a sorting criteria, this function returns a sorted map by key.
  Map<K, List<T>> groupBy<K>(
    K Function(T) keyFunction, {
    int Function(K, K) sortingCriteria,
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
