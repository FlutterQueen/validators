import 'package:queen_validators/queen_validators.dart';

class IsHexColor extends TextValidationRule {
  IsHexColor({String? msg}) : super(msg);

  @override
  String get defaultError => 'is not a hex color';

  @override
  bool isValid(String val) => isHexColor(val);
}

/// can starts with or without`#`
/// must contains

bool isHexColor(String color) {
  return RegExp(r'^#?([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$').hasMatch(color);
}
