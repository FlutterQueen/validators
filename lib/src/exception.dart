class QValidationException implements Exception {
  final Map<String, List<String>> errors;
  QValidationException(this.errors);
}
