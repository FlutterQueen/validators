import 'package:meta/meta.dart';

///  interface for the queen validation rules
///  T => Type Of Input to apply validation to
///    input is! T   => failure
///

abstract class TextValidationRule {
  ///  message to show case validations fails

  @mustCallSuper
  TextValidationRule(this.defaultError);

  //  return a bool Either valid or NOT
  bool isValid(String input);

  final String defaultError;
  //  will apply the validation to the input
  //  in case of error return the default error message
  String? run(String? v) {
    // if input is null return null
    // else if isValid ? return null
    // else return the failureMessage

    return v != null && isValid(v) ? null : defaultError;
  }

  // TextValidationRule when(WhenCallBack whenCallBack) {
  //   applyThisRule = whenCallBack();
  //   return this;
  // }
}
