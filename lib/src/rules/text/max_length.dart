import 'package:queen_validators/src/text_rule_class.dart';
import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

/// checks if the input characters length is smaller than the min field
class MaxLength extends TextValidationRule {
  final int max;

  MaxLength(this.max);

  @override
  bool isValid(String input) => input.trim().length <= max;
  @override
  String get error => 'max length is $max';
}
