import 'package:queen_validators/src/text_rule_class.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `odd` number
class IsOdd extends TextValidationRule {
  IsOdd([String? msg]) : super(msg ?? 'is not odd number');

  @override
  bool isValid(String input) => isOdd(input);
}

bool isOdd(String? input) => num.tryParse(input ?? '')?.toInt().isOdd ?? false;
