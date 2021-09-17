import 'package:queen_validators/src/text_rule_class.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `double`
class IsDouble extends TextValidationRule {
  IsDouble([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not even number';

  @override
  bool isValid(String val) => isDouble(val);
}

bool isDouble(String val) {
  final asNumber = double.tryParse(val);
  return asNumber != null;
}
