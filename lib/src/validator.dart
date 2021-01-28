import 'package:queen_validators/src/imp/validation.dart';

Function(String) qValidator(List<QueenValidationRule> rules) {
  return (String val) {
    String msg;
    for (final rule in rules) {
      msg = rule.run(val);
      if (msg != null) break;
    }
    return msg;
  };
}
