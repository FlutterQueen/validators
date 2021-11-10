import 'package:queen_validators/src/text_rule_class.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `integer`
class IsInt extends TextValidationRule {
  IsInt([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not valid int';

  @override
  bool isValid(String input) => isInt(input);
}

bool isInt(String? input) => int.tryParse(input ?? '') != null;
