import 'package:queen_validators/queen_validators.dart';
import 'package:queen_validators/src/functions/is_not_empty.dart';
import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input is not empty string
class IsRequired extends QueenValidationRule<dynamic> {
  const IsRequired({String? msg}) : super(msg);

  @override
  String get defaultError => 'required';

  @override
  bool isValid(dynamic val) {
    if (val == null) {
      return false;
    } else if (val is String) {
      return isNotEmpty(val);
    } else {
      return true;
    }
  }
}
