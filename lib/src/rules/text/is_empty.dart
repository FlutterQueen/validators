import '../../../queen_validators.dart';
import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

class IsEmpty extends TextValidationRule {
  IsEmpty([String? error]) : super(error);

  @override
  bool isValid(String input) => isEmpty(input);
  @override
  String get localizedError => throw UnimplementedError();
}

/// `trim` the string then checks if `isEmpty`
/// if string is empty it will returns true
bool isEmpty(String? input) {
  return input?.trim().isEmpty ?? true;
}
