import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

/// checks if the input is a valid `integer`
class IsNumber extends TextValidationRule {
  IsNumber([String? error]) : super(error);

  @override
  bool isValid(String input) => isNumber(input);
  @override
  String get localizedError => "validation.must_be_int".tr;
}

bool isNumber(String? input) => num.tryParse(input ?? '') != null;
