/// Thrown if during fetching properties process failure occurs.
class PropertyException implements Exception {
  /// Type of error.
  final PropertyExceptionType errorType;

  /// The associated error message.
  final String message;

  /// Creates [PropertyException].
  const PropertyException(
    this.errorType, [
    this.message = 'An unknown exception occurred.',
  ]);
}

/// Types of [PropertyException]s.
enum PropertyExceptionType {
  /// If error occurs at parsing stage.
  parsing,

  /// If error occurs at performing request stage.
  network
}
