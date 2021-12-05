import 'package:email_validator/email_validator.dart';

import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input is a valid `email` address
class IsEmail extends TextValidationRule {
  IsEmail() : super();

  @override
  bool isValid(String input) => isEmail(input);
  @override
  String get error => throw UnimplementedError();
}

/// checks if the value can be well formatted email address
bool isEmail(String? email) => EmailValidator.validate(email ?? '');
