import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `odd` intger
class IsPositiveNumber extends TextValidationRule {
  const IsPositiveNumber([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not odd number';

  @override
  bool isValid(String val) {
    final asNumber = num.tryParse(val);
    if (asNumber != null) {
      return !asNumber.isNegative;
    }
    return false;
  }
}
