import 'package:queen_validators/queen_validators.dart';

class IsHexColor extends TextValidationRule {
  IsHexColor({String msg = 'is not a hex color'}) : super(msg);

  @override
  bool isValid(String input) => isHexColor(input);
}

/// can starts with or without`#`
/// must contains
bool isHexColor(String? input) {
  return input != null &&
      (RegExp(r'^#?([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$').hasMatch(input) ||
          RegExp(r'^#?([A-Fa-f0-9]{8}|[A-Fa-f0-9]{3})$').hasMatch(input));
}
