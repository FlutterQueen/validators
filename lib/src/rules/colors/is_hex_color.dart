import 'package:queen_validators/queen_validators.dart';

/// checks if the input is valid hex color
class IsHexColor extends TextValidationRule {
  /// * [error] - the error message to be displayed if the validation fails
  IsHexColor() : super();

  @override
  bool isValid(String input) => isHexColor(input);

  @override
  String get error => 'is_hex_color';
}

/// can starts with or without`#`
/// must contains
bool isHexColor(String? input) {
  return input != null &&
      (RegExp(r'^#?([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$').hasMatch(input) ||
          RegExp(r'^#?([A-Fa-f0-9]{8}|[A-Fa-f0-9]{3})$').hasMatch(input));
}
