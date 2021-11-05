import 'package:queen_validators/src/text_rule_class.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `positive` number
class IsPositiveNumber extends TextValidationRule {
  IsPositiveNumber([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not odd number';

  @override
  bool isValid(String val) => isPositiveNumber(val);
}

bool isPositiveNumber(String val) {
  final asNumber = num.tryParse(val);
  if (asNumber != null) {
    return !asNumber.isNegative;
  }
  return false;
}
