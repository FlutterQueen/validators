import 'package:queen_validators/src/functions/is_empty.dart';
import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/src/rules/is_optional.dart';

/// ? build and return String Function(String value) function which triggers the provided validation rules
/// * how the validation loop works
/// it will loop for each in the rules List
/// if the role is type of optional it wail mark the validation process for ths item as optional
/// which mans in case of any validation fails and the value is null there will be no error
/// but if the validations fails and the value is not null will return the first fail error message
String? Function(String?) qValidator(List<TextValidationRule> rules) {
  /// if the validator loop has any `IsOptional` Rule this will make
  /// this variables = `true`;
  /// we will need to decide later on if the loop has `IsOptional` rule on it or not
  var isOptional = false;

  return (String? val) {
    /// will contains the first failed rule message
    String? msg;

    for (final rule in rules) {
      /// if any rules contains `IsOptional`
      /// the validator loop will return `TextFiled` value `isEmpty`
      /// and will not consider any faller from any rule
      /// ! else it will work as usual and validated the next rule and return only the first failure
      if (rule is IsOptional) isOptional = true;

      /// * call the validate function and
      /// if it return null then the will be no error;
      /// else ir will return the failure message
      /// which will be return as the validation error for the entire validation process
      msg = rule.run(val);

      /// if the failure message `msg` has value on it
      /// that means some rule has failed
      /// and we return only the first failure
      /// so there is no reason to continue validation the remain rules
      if (msg != null) break;
    }
    if (isOptional && val != null && isEmpty(val)) return null;
    return msg;
  };
}
