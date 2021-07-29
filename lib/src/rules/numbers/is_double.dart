import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `even` intger
class IsDouble extends TextValidationRule {
  IsDouble([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not even number';

  @override
  bool isValid(String val) {
    final asNumber = double.tryParse(val);
    return asNumber != null;
  }
}
