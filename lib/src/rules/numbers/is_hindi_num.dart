import '../../../queen_validators.dart';

/// checks if the input is a valid `integer`
class IsHindiNum extends TextValidationRule {
  IsHindiNum();

  @override
  bool isValid(String input) => isHindiNum(input);
  @override
  String get error => throw UnimplementedError();
}

bool isHindiNum(String input) {
  //ToDo if it's starts with ٠ , i.e ٠٢٣٤٥٦٧ it's not a valid number
  return RegExp('^[\u0661-\u0669][\u0660-\u0669]*\$').hasMatch(input);
}
