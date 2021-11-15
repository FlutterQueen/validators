import 'package:queen_validators/src/text_rule_class.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `even` number
class IsEven extends TextValidationRule {
  IsEven([String? msg]) : super(msg ?? 'is not even number');

  @override
  bool isValid(String input) => isEven(input);
}

bool isEven(String? input) =>
    num.tryParse(input ?? '')?.toInt().isEven ?? false;
