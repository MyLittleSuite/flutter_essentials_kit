/// The let function block.
typedef LetFunction<T, U> = U Function(T it);

extension CommonFunctions<T> on T {
  /// Calls the specified function block with this value as its argument and returns its result.
  U let<U>(LetFunction<T, U> block) => block(this);
}
