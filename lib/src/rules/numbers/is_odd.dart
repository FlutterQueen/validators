import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `odd` intger
class IsOdd extends TextValidationRule {
  IsOdd([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not odd number';

  @override
  bool isValid(String val) {
    final asNumber = num.tryParse(val);
    if (asNumber != null) {
      return asNumber.toInt().isOdd;
    }
    return false;
  }
}
