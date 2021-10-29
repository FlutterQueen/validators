import 'package:queen_validators/src/text_rule_class.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `odd` number
class IsOdd extends TextValidationRule {
  IsOdd([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not odd number';

  @override
  bool isValid(String val) => isOdd(val);
}

bool isOdd(String val) {
  final asNumber = num.tryParse(val);
  if (asNumber != null) {
    return asNumber.toInt().isOdd;
  }
  return false;
}
