import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart';

const _rtlLocales = <String>[
  'ar', // Arabic
  'fa', // Farsi
  'he', // Hebrew
  'ps', // Pashto
  'ur', // Urdu
];

class IsLtrLanguage extends TextValidationRule {
  IsLtrLanguage([String? error]) : super(error);

  @override
  bool isValid(String input) => isLtrLanguage(input);
  @override
  String get localizedError => 'validation.is_not_ltr_language_code'.tr;
}

bool isLtrLanguage(String languageCode) =>
    !_rtlLocales.contains(languageCode.toLowerCase());
