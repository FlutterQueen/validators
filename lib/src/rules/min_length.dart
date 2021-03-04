import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input charachtrs length is bigger than the min feild

class MinLength extends QueenValidationRule {
  final int min;
  final bool trim;

  MinLength(this.min, {String? msg, this.trim = true}) : super(msg);

  @override
  String get errorMsg => 'min length is $min';

  @override
  bool validate(String val) =>
      trim ? val.trim().length >= min : val.length >= min;
}
