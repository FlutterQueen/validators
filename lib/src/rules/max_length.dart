import 'package:queen_validators/src/functions/string.dart';
import 'package:queen_validators/src/imp/validation.dart';

class MaxLength extends QueenValidationRule {
  final int max;
  final bool trim;
  MaxLength(this.max, {String msg, this.trim = true}) : super(msg);

  @override
  String run(String val) {
    return maxLength(this.max, trim ? val.trim() : val)
        ? null
        : msg ?? 'max length is $max';
  }
}
