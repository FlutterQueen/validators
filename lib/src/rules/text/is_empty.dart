import '../../../queen_validators.dart';

class IsEmpty extends TextValidationRule {
  IsEmpty([String? error]) : super(error);

  @override
  bool isValid(String input) => isEmpty(input);
  @override
  String toString() => 'validation.is_empty';
}

/// `trim` the string then checks if `isEmpty`
/// if string is empty it will returns true
bool isEmpty(String? input) {
  return input?.trim().isEmpty ?? true;
}
