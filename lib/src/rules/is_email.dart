import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/index.dart';

class IsEmail extends QueenValidationRule<String> {
  IsEmail({String msg}) : super(msg);

  @override
  String get errorMsg => 'not a valid email address';

  @override
  bool validate(String val) => val.isEmail();
}
