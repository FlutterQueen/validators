// ignore_for_file: implementation_imports

import 'package:nations/src/extensions/string.dart';
import 'package:queen_validators/queen_validators.dart';

class IsFacebookUrl extends TextValidationRule {
  IsFacebookUrl([String? error]) : super(error);

  @override
  bool isValid(String input) => isFacebookUrlValid(input);

  @override
  
  String get localizedError => 'not_valid_facebook_url'.tr;
}

bool isFacebookUrlValid(String url){
  return RegExp(r'^((https?):\/\/)((www\.)?(facebook)\.(com))\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)').hasMatch(url);
}
