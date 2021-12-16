import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart';

class IsDate extends TextValidationRule {
  const IsDate([String? error]) : super(error);

  @override
  bool isValid(String input) => isDate(input);

  @override
  String get localizedError => 'is_not_date_format'.tr;
}

/// checks if the input is a valid `date` to parse by Dart `DateTime` class
bool isDate(String? v) => DateTime.tryParse(v ?? '') != null;
