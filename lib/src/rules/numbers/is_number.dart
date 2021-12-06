import '../../../queen_validators.dart';
import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

/// checks if the input is a valid `integer`
class IsNumber extends TextValidationRule {
  IsNumber();

  @override
  bool isValid(String input) => isNumber(input);
  @override
  String get error => throw UnimplementedError();
}

bool isNumber(String? input) => num.tryParse(input ?? '') != null;
