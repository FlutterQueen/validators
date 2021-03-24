import 'package:queen_validators/queen_validators.dart';
import 'package:queen_validators/src/functions/is_not_empty.dart';
import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input is not empty string
class IsRequired extends QueenValidationRule {
  const IsRequired({String? msg}) : super(msg);

  @override
  String get errorMsg => 'required';

  @override
  bool validate(dynamic val) {
    if (val is String) {
      return isNotEmpty(val);
    } else {
      return val != null;
    }
  }
}
