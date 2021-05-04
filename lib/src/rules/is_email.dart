import 'package:queen_validators/src/functions/is_email.dart';
import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `email` address
class IsEmail extends TextValidationRule {
  const IsEmail([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not valid email address';

  @override
  bool isValid(String val) => isEmail(val);
}
