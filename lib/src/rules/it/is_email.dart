import 'package:email_validator/email_validator.dart';

import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input is a valid `email` address
class IsEmail extends TextValidationRule {
  IsEmail([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not valid email address';

  @override
  bool isValid(String input) => isEmail(input);
}

/// checks if the value can be well formatted email address
bool isEmail(String? email) => email != null && EmailValidator.validate(email);
