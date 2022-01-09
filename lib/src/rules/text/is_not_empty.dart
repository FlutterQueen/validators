/// checks if the input is not empty string

/// IsRequired is more convenient still
/// wont be bad to have both
import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart';

class IsRequired extends TextValidationRule {
  IsRequired([String? error]) : super(error);

  @override
  bool isValid(String input) => isNotEmpty(input);
  @override
  String get localizedError => 'validation.is_required'.tr;
}

/// `trim` the string then checks if `isNotEmpty`
bool isNotEmpty(String? string) {
  return string?.trim().isNotEmpty ?? false;
}
