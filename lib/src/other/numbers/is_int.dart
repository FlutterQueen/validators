import 'package:queen_validators/src/text_rule_class.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `integer`
class IsInt extends TextValidationRule {
  IsInt([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not valid int';

  @override
  bool isValid(String val) => isInt(val);
}

bool isInt(String val) {
  final asNumber = int.tryParse(val);
  return asNumber != null;
}
