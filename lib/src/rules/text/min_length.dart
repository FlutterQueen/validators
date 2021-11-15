import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input characters length is bigger than the min field

class MinLength extends TextValidationRule {
  final int min;

  MinLength(this.min, [String? msg]) : super(msg ?? 'min length is $min');

  @override
  bool isValid(String input) {
    return input.trim().length >= min;
  }
}

bool minLength(String? input, int min) {
  if (input == null) return false;
  return input.trim().length >= min;
}
