import 'package:matcher/src/interfaces.dart';
// ignore: implementation_imports
import 'package:nations/src/extensions/string.dart';
import 'package:queen_validators/queen_validators.dart';

class IsUrl extends TextValidationRule {
  IsUrl([String? error]) : super(error);

  @override
  bool isValid(String input) => isUrlValid(input);

  @override
  String get localizedError => 'not_valid_url'.tr;
}

bool isUrlValid(String url) {
  return RegExp(
    r'^((https?):\/\/)((www\.)?([a-zA-Z0-9!_$]+)\.([a-zA-Z]{2,5}))\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$',
  ).hasMatch(url);
}
