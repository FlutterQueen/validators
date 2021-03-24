import 'package:email_validator/email_validator.dart';

/// checks if the value can be well formatted email address
bool isEmail(String email) => EmailValidator.validate(email);
