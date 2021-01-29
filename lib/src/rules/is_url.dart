import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid url
class IsUrl extends QueenValidationRule<String> {
  IsUrl({String msg}) : super(msg);

  @override
  String get errorMsg => 'not valid URL';

  @override
  bool validate(String val) => val.isURL();
}
