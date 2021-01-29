import 'package:queen_validators/index.dart';
import 'package:queen_validators/src/imp/validation.dart';

class MinLength extends QueenValidationRule<String> {
  final int min;
  final bool trim;

  MinLength(this.min, {String msg, this.trim = true}) : super(msg);

  @override
  String get errorMsg => 'min length is $min';

  @override
  bool validate(String val) =>
      trim ? val.trim().minLength(min) : val.minLength(min);
}
