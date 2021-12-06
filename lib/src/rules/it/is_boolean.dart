import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

class IsBool extends TextValidationRule {
  const IsBool();

  @override
  bool isValid(String input) => isBool(input);
  @override
  String get error => 'is_not_bool'.tr;
}

bool isBool(Object? input) {
  return [
    'true',
    'false',
    true,
    false,
  ].any((e) {
    if (e is String && input is String) {
      return e.compareTo(input.trim().toLowerCase()) == 0;
    } else {
      return e == input;
    }
  });
}
