import 'package:queen_validators/src/functions/string.dart';
import 'package:queen_validators/src/imp/validation.dart';

class IsEmail extends QueenValidationRule {
  IsEmail({String msg}) : super(msg);

  @override
  String run(String val) {
    return isEmail(val) ? null : msg ?? 'not a valid email address';
  }
}
