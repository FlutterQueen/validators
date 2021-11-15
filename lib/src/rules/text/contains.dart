import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input does contain the provided value;

class Contains extends TextValidationRule {
  final String value;

  Contains(this.value, [String? msg]) : super(msg ?? 'must contain $value');

  @override
  bool isValid(String input) => input.trim().contains(value);
}
