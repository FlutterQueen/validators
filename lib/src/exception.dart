/// impelementopn of `Exception` class
/// but with another extra variable `erros`
/// which will conatain the faild validation message from the `DTO`
class QValidationException implements Exception {
  final Map<String, List<String>> errors;
  QValidationException(this.errors);
}
