import '../../../queen_validators.dart';

/// checks if the input is a valid `integer`
class IsArabicNum extends TextValidationRule {
  IsArabicNum([String? error]) : super(error);

  @override
  bool isValid(String input) => isArabicNum(input);
  @override
  String toString() => 'validation.must_be_num';
}

bool isArabicNum(String input) {
  //ToDo if it's starts with 0 , i.e 032158 it's not a valid number
  return RegExp('^[1-9][0-9]*\$').hasMatch(input);
}
