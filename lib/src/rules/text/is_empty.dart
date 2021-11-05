import '../../../queen_validators.dart';

class IsEmpty extends TextValidationRule {
  IsEmpty([String? msg]) : super(msg);

  @override
  String get defaultError => 'must_be_empty';

  @override
  bool isValid(String val) => isEmpty(val);
}

/// `trim` the string then checks if `isEmpty`
bool isEmpty(String string) {
  return string.trim().isEmpty;
}
