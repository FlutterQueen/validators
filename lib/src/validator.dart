import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/src/extensions/dynamic.dart';
import 'package:queen_validators/src/rules/is_optional.dart';

/// ? build and return String Function(String value) function wich triggires the provided validation rules
/// * how the validation loop works
/// it will loop for each in the rules List
/// if the role is type of optional it waill mark the validation process for ths item as optonal
/// wich mans in case of any validation fails and the value is null there will be no error
/// but if the validations fails and the value is not null will return the first fail error message
Function(String) qValidator(List<QueenValidationRule> rules) {
  bool isOptional = false;
  return (String val) {
    String msg;
    for (final rule in rules) {
      if (rule.runtimeType == IsOptional) isOptional = true;
      msg = rule.run(val);
      if (msg != null) break;
    }
    if (isOptional && val.isNull) return null;
    return msg;
  };
}
