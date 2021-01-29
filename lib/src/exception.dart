/// impelementopn of Exception class
/// but add another variable  erros
/// wich will conatain the faild validation message from the DTO
class QValidationException implements Exception {
  final Map<String, List<String>> errors;
  QValidationException(this.errors);
}
