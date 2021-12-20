import 'package:queen_validators/src/text_rule_class.dart';

import '../../../queen_validators.dart';

/// checks if the input characters length is bigger than the min field

class MinLength extends TextValidationRule {
  final int min;

  MinLength(this.min, [String? error]) : super(error);

  @override
  bool isValid(String input) {
    return input.trim().length >= min;
  }

  @override
  String get localizedError => 'validation.min length is $min';
}

bool minLength(String? input, int min) {
  if (input == null) return false;
  return input.trim().length >= min;
}
