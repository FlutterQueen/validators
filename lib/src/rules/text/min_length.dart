import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input characters length is bigger than the min field

class MinLength extends TextValidationRule {
  final int min;

  MinLength(this.min, [String? msg]) : super(msg);

  @override
  String get defaultError => 'min length is $min';

  @override
  bool isValid(String val) {
    return val.trim().length >= min;
  }
}

bool minLength(String val, int min) {
  return val.trim().length >= min;
}