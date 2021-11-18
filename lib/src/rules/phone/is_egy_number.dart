import 'package:queen_validators/queen_validators.dart';
import 'package:queen_validators/src/text_rule_class.dart';

class IsEgyptianPhone extends TextValidationRule {
  IsEgyptianPhone([String? msg]) : super(msg ?? 'is not valid egyptian phone');

  @override
  bool isValid(String input) => isEgyptianNumber(input);
}

bool isEgyptianNumber(String str) {
  final phoneRegX = RegExp('^01[0125][0-9]{8}\$');

  return phoneRegX.hasMatch(str);
}
