import '../../../queen_validators.dart';

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
  String toString() => 'validation.is_not_ltr_language_code';
}

bool isLtrLanguage(String languageCode) =>
    !_rtlLocales.contains(languageCode.toLowerCase());
