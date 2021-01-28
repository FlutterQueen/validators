import 'package:queen_validators/src/functions/string.dart';
import 'package:queen_validators/src/imp/validation.dart';

class IsNotEmpty extends QueenValidationRule {
  IsNotEmpty({String msg}) : super(msg);

  @override
  String run(String val) {
    return isNotEmpty(val) ? null : msg ?? 'is empty';
  }
}
