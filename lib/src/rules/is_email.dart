import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid email address
class IsEmail extends QueenValidationRule<String> {
  IsEmail({String msg}) : super(msg);

  @override
  String get errorMsg => 'not valid email address';

  @override
  bool validate(String val) => val.isEmail();
}
