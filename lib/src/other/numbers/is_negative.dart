import 'package:queen_validators/src/text_rule_class.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `Negative` number
class IsNegativeNumber extends TextValidationRule {
  IsNegativeNumber([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not a negative number';

  @override
  bool isValid(String input) => isNegativeNumber(input);
}

bool isNegativeNumber(String input) {
  final asNumber = num.tryParse(input);
  if (asNumber != null) {
    return asNumber.isNegative;
  }
  return false;
}
