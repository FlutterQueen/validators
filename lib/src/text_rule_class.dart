import 'package:meta/meta.dart';

///  interface for the queen validation rules
///  T => Type Of Input to apllay validation to
///    input is! T   => failure
///

typedef WhenCallBack = bool Function();

abstract class TextValidationRule {
  ///  message to show case validations fails

  final String? failureMessage;

  bool applyThisRule = true;

  @mustCallSuper
  TextValidationRule([this.failureMessage]);

  //  return a bool Either valid or NOT
  bool isValid(String input);

  String get defaultError;
  //  will apply the validation to the input
  //  in case of error return the default error message
  String? run(String? v) {
    // if input is null return null
    // else if isValid ? return null
    // else return the failureMessage
    if (applyThisRule) {
      return v != null && isValid(v) ? null : failureMessage ?? defaultError;
    }
  }

  // TextValidationRule when(WhenCallBack whenCallBack) {
  //   applyThisRule = whenCallBack();
  //   return this;
  // }
}
