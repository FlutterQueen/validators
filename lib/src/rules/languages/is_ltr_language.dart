import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

const _rtlLocales = <String>[
  'ar', // Arabic
  'fa', // Farsi
  'he', // Hebrew
  'ps', // Pashto
  'ur', // Urdu
];

class IsLtrLanguage extends TextValidationRule {
  IsLtrLanguage();

  @override
  bool isValid(String input) => isLtrLanguage(input);
  @override
  String get error => 'is_not_ltr_language_code'.tr;
}

bool isLtrLanguage(String languageCode) =>
    !_rtlLocales.contains(languageCode.toLowerCase());
