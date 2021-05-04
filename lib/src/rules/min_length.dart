import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input characters length is bigger than the min field

class MinLength extends TextValidationRule {
  final int min;

  const MinLength(this.min, [String? msg]) : super(msg);

  @override
  String get defaultError => 'min length is $min';

  @override
  bool isValid(String val) {
    return val.trim().length >= min;
  }
}
