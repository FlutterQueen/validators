import '../../../queen_validators.dart';

/// checks if the input is a valid `integer`
class IsNumber extends TextValidationRule {
  IsNumber([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not valid number';

  @override
  bool isValid(String input) => isNumber(input);
}

bool isNumber(String? input) => num.tryParse(input ?? '') != null;
