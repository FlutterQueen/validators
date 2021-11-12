import 'package:queen_validators/src/text_rule_class.dart';

class IsDate extends TextValidationRule {
  IsDate([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not valid date format';

  @override
  bool isValid(String input) => isDate(input);
}

/// checks if the input is a valid `date` to parse by Dart `DateTime` class
bool isDate(String? v) => DateTime.tryParse(v ?? '') != null;
