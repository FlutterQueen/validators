import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input characters length is smaller than the min field
class MaxLength extends TextValidationRule {
  final int max;

  MaxLength(this.max, [String? msg]) : super(msg);

  @override
  String get defaultError => 'max length is $max';

  @override
  bool isValid(String input) => input.trim().length <= max;
}
