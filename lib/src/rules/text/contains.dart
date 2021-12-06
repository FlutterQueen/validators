import 'package:queen_validators/src/text_rule_class.dart';
import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

/// checks if the input does contain the provided value;

class Contains extends TextValidationRule {
  final String value;

  Contains(this.value);

  @override
  bool isValid(String input) => input.trim().contains(value);
  @override
  String get error => throw UnimplementedError();
}
