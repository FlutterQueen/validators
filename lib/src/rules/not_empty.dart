import 'package:queen_validators/queen_validators.dart';
import 'package:queen_validators/src/imp/validation.dart';

class IsNotEmpty extends QueenValidationRule<String> {
  IsNotEmpty({String msg}) : super(msg);

  @override
  String get errorMsg => 'must not be empty';

  @override
  bool validate(String val) => val.isNotEmptyString();
}
