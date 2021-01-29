import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/index.dart';

class MaxLength extends QueenValidationRule<String> {
  final int max;
  final bool trim;
  MaxLength(this.max, {String msg, this.trim = true}) : super(msg);

  @override
  String get errorMsg => 'max length is $max';

  @override
  bool validate(String val) =>
      trim ? val.trim().maxLength(max) : val.maxLength(max);
}
