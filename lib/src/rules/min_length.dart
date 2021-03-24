import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input characters length is bigger than the min field

class MinLength extends QueenValidationRule {
  final int min;
  final bool trim;

  const MinLength(this.min, {String? msg, this.trim = true}) : super(msg);

  @override
  String get errorMsg => 'min length is $min';

  @override
  bool validate(String val) =>
      trim ? val.trim().length >= min : val.length >= min;
}
