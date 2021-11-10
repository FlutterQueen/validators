import '../../../queen_validators.dart';

class IsEmpty extends TextValidationRule {
  IsEmpty([String? msg]) : super(msg);

  @override
  String get defaultError => 'must_be_empty';

  @override
  bool isValid(String input) => isEmpty(input);
}

/// `trim` the string then checks if `isEmpty`
/// if string is empty it will returns true
bool isEmpty(String? input) {
  return input?.trim().isEmpty ?? true;
}
