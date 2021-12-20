import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

const _rtlLocales = <String>[
  'ar', // Arabic
  'fa', // Farsi
  'he', // Hebrew
  'ps', // Pashto
  'ur', // Urdu
];

class IsRTLLanguage extends TextValidationRule {
  IsRTLLanguage([String? error]) : super(error);

  @override
  bool isValid(String input) => isRtlLanguage(input);
  @override
  String get localizedError => 'validation.is_not_rtl_language_code'.tr;
}

bool isRtlLanguage(String languageCode) =>
    _rtlLocales.contains(languageCode.toLowerCase());
