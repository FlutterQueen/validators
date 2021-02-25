import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/src/extensions/string.dart';
import 'package:queen_validators/src/rules/is_optional.dart';

/// ? build and return String Function(String value) function wich triggires the provided validation rules
/// * how the validation loop works
/// it will loop for each in the rules List
/// if the role is type of optional it waill mark the validation process for ths item as optonal
/// wich mans in case of any validation fails and the value is null there will be no error
/// but if the validations fails and the value is not null will return the first fail error message
String Function(String) qValidator(List<QueenValidationRule> rules) {
  /// if the validator loop has any `IsOptional` Rule this will make
  /// this varables = `true`;
  /// we will need to decide leater on if the loop has `IsOptional` rule on it or not
  bool isOptional = false;

  return (String val) {
    /// will contains the first failed rule message
    String msg;

    for (final rule in rules) {
      /// if any rules contains `IsOptional`
      /// the validator loop will return `TextFiled` value `isEmpty`
      /// and will not cosider any falier from any roule
      /// ! else it will work as usual and validated the next reule and return only the first faliure
      if (rule is IsOptional) isOptional = true;

      /// * call the validate function and
      /// if it return null then thre will be no error;
      /// else ir will return the faliure message
      /// wich will be return as the validation error for the enrire validation process
      msg = rule.run(val);

      /// if the falire message `msg` has value on it
      /// that means some rule has failed
      /// and we return only the first falire
      /// so there is no reson to continue validation the remain rules
      if (msg != null) break;
    }
    if (isOptional && val.isEmptyString) return null;
    return msg;
  };
}
