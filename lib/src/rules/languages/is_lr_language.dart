import '../../../queen_validators.dart';

const _rtlLocales = <String>[
  'ar', // Arabic
  'fa', // Farsi
  'he', // Hebrew
  'ps', // Pashto
  'ur', // Urdu
];

class IsLtrLanguage extends TextValidationRule {
  IsLtrLanguage([String? msg]) : super(msg ?? 'is not LTR Language');

  @override
  bool isValid(String input) => isLtrLanguage(input);
}

bool isLtrLanguage(String languageCode) =>
    !_rtlLocales.contains(languageCode.toLowerCase());
