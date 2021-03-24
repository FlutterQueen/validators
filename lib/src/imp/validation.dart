// interface for the queen validation rule
abstract class QueenValidationRule {
  // ? message to show case validations fails
  // ? user might want to display custom message
  final String? msg;

  const QueenValidationRule(this.msg);

  // ? default message in case the user didn't use another one
  String? get errorMsg;

  // ? return a bool Either he succeeds or fails the validation
  bool validate(dynamic? val);

  // * will apply the validation then return the user custom error message
  // * in case user message == null it will return the default error message
  String? run(dynamic? v) {
    if (v == null) {
      return null;
    } else if (validate(v)) {
      return null;
    } else {
      return msg ?? errorMsg;
    }
  }
}
