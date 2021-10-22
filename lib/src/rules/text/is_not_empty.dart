import 'package:queen_validators/queen_validators.dart';

import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input is not empty string
class IsNotEmpty extends TextValidationRule {
  IsNotEmpty([String? msg]) : super(msg);

  @override
  String get defaultError => 'required';

  @override
  bool isValid(String val) {
    return isNotEmpty(val);
  }
}

/// IsRequired is more convenint still
/// wont be bad to have both
class IsRequired extends IsNotEmpty {
  IsRequired([String? msg]) : super(msg);

  @override
  String get defaultError => 'required';
}

/// `trim` the string then checks if `isNotEmpty`
bool isNotEmpty(String string) {
  return string.trim().isNotEmpty;
}
