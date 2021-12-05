import 'package:queen_validators/queen_validators.dart';

import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input is not empty string

/// IsRequired is more convenient still
/// wont be bad to have both
class IsRequired extends TextValidationRule {
  IsRequired();

  @override
  bool isValid(String input) => isNotEmpty(input);
  @override
  String get error => 'this felid is required';
}

/// `trim` the string then checks if `isNotEmpty`
bool isNotEmpty(String? string) {
  return string?.trim().isNotEmpty ?? false;
}
