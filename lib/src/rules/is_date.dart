import 'package:queen_validators/src/functions/dates/is_date.dart';
import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `date`
class IsDate extends TextValidationRule {
  IsDate([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not valid date format';

  @override
  bool isValid(String val) => isDate(val);
}
