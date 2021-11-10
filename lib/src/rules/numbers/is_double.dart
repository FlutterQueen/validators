import 'package:queen_validators/src/text_rule_class.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `double`
class IsDouble extends TextValidationRule {
  IsDouble([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not dobule digit number';

  @override
  bool isValid(String input) => isDouble(input.trim());
}

bool isDouble(Object? input) =>
    input != null &&
    (input is double || (input is String && double.tryParse(input) != null));
