import 'package:queen_validators/src/functions/string.dart';
import 'package:queen_validators/src/imp/validation.dart';

class MinLength extends QueenValidationRule {
  final int min;
  final bool trim;

  MinLength(this.min, {String msg, this.trim = true}) : super(msg);

  @override
  String run(String val) {
    return minLength(this.min, trim ? val.trim() : val)
        ? null
        : msg ?? 'min length is $min';
  }
}
