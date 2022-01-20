import 'package:matcher/src/interfaces.dart';
import 'package:queen_validators/queen_validators.dart';

class IsUrl extends TextValidationRule {
  IsUrl([String? error]) : super(error);

  @override
  bool isValid(String input) => isUrlValid(input);

  @override
  String get localizedError => 'this is not a valid url';
}

bool isUrlValid(String url) {
  return RegExp(r'^((http|https)://)(www\.)?([a-zA-Z0-9!_$]+)\.([a-zA-Z]{2,5})\/*([a-zA-Z0-9!_$]*)$')
      .hasMatch(url);
}
