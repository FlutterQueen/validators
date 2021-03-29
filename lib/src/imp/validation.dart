import 'package:meta/meta.dart';

/// * interface for the queen validation rules
/// * T => Type Of Input to apllay validation to
/// ?   val is! T   => failure
abstract class QueenValidationRule<T> {
  /// ? message to show case validations fails

  final String? error;

  @mustCallSuper
  const QueenValidationRule(this.error);

  /// ? default message in case the user didn't use another one
  String get defaultError;

  // ? return a bool Either valid or NOT
  bool isValid(T val);

  // * will apply the validation to the input
  // * in case of error return the default error message
  String? run(dynamic? v) {
    // if input is null return null
    // else is same type  AND isValid ? return null
    // else return some String

    // return v != null && v is T && isValid(v) ? null : error ?? defaultError;
    return v == null || (v is T && isValid(v)) ? null : error ?? defaultError;

    // return v == null
    //     ? null
    //     : v is T && isValid(v)
    //         ? null
    //         : error ?? defaultError;
    // if (v == null) return null;
    // return v is T && isValid(v) ? null : error ?? defaultError;
  }
}
