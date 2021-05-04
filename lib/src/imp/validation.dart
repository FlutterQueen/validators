import 'package:meta/meta.dart';

///  interface for the queen validation rules
///  T => Type Of Input to apllay validation to
///    val is! T   => failure
abstract class TextValidationRule {
  ///  message to show case validations fails

  final String? failureMessage;

  @mustCallSuper
  const TextValidationRule([this.failureMessage]);

  //  return a bool Either valid or NOT
  bool isValid(String val);

  String get defaultError;
  //  will apply the validation to the input
  //  in case of error return the default error message
  String? run(String? v) {
    // if input is null return null
    // else if isValid ? return null
    // else return the failureMessage
    return v != null && isValid(v) ? null : failureMessage ?? defaultError;
  }
}
