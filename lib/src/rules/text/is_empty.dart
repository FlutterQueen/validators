import '../../../queen_validators.dart';

class IsEmpty extends TextValidationRule {
  IsEmpty();

  @override
  bool isValid(String input) => isEmpty(input);
  @override
  String get error => throw UnimplementedError();
}

/// `trim` the string then checks if `isEmpty`
/// if string is empty it will returns true
bool isEmpty(String? input) {
  return input?.trim().isEmpty ?? true;
}
