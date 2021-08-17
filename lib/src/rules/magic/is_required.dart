import 'package:queen_validators/queen_validators.dart';
import 'package:queen_validators/src/rules/text/is_not_empty.dart';
import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input is not empty string
class IsRequired extends TextValidationRule {
  IsRequired([String? msg]) : super(msg);

  @override
  String get defaultError => 'required';

  @override
  bool isValid(String val) {
    return isNotEmpty(val);
  }
}
