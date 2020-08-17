extension IterableFiltering<T> on Iterable<T> {
  /// Remove all null elements in this iterable.
  /// Example:
  ///   before: [1, 2, null, "12", null, 9129, "ciao", null, "come", null]
  ///   after: [1, 2, "12", 9129, "ciao", "come"]
  Iterable<T> filterNull() => where((element) => element != null);
}
