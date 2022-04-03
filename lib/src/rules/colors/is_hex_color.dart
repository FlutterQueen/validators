import '../../../queen_validators.dart';

/// checks if the input is valid hex color
class IsHexColor extends TextValidationRule {
  /// he error message to be displayed if the validation fails
  const IsHexColor([String? error]) : super(error);

  @override
  bool isValid(String input) => isHexColor(input);

  @override
  String toString() => 'must be hex color';
}

/// can starts with or without`#`
/// must contains
bool isHexColor(String? input) =>
    input != null &&
    (RegExp(r'^#?([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$').hasMatch(input) ||
        RegExp(r'^#?([A-Fa-f0-9]{8}|[A-Fa-f0-9]{3})$').hasMatch(input));
