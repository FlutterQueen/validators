// ignore_for_file: implementation_imports

import 'package:nations/src/extensions/string.dart';
import 'package:queen_validators/queen_validators.dart';

class IsYoutubeUrl extends TextValidationRule {
  IsYoutubeUrl([String? error]) : super(error);

  @override
  bool isValid(String input) => isYoutubeUrLValid(input);

  @override
  String get localizedError => 'not_valid_youtube_url'.tr;
}

bool isYoutubeUrLValid(String url) => RegExp(
      r'^((https?):\/\/)((www\.)?(youtube)\.(com))\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)',
    ).hasMatch(url);
