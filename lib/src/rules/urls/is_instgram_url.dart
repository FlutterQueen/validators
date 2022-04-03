// ignore_for_file: implementation_imports

import 'package:nations/src/extensions/string.dart';
import 'package:queen_validators/queen_validators.dart';

class IsInstagramUrl extends TextValidationRule {
  IsInstagramUrl([String? error]) : super(error);

  @override
  bool isValid(String input) => isInstgramUrlValid(input);

  @override
  String get localizedError => 'not_valid_instagram_url'.tr;
}

bool isInstgramUrlValid(String url) => RegExp(
      r'^((https?):\/\/)((www\.)?(instagram)\.(com))\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)',
    ).hasMatch(url);
