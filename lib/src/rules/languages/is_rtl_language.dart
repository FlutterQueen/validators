import '../../../queen_validators.dart';

const _rtlLocales = <String>[
  'ar', // Arabic
  'fa', // Farsi
  'he', // Hebrew
  'ps', // Pashto
  'ur', // Urdu
];

class IsRTLLanguage extends TextValidationRule {
  IsRTLLanguage([String? msg]) : super(msg ?? 'is not RTL Language');

  @override
  bool isValid(String input) => isRtlLanguage(input);
}

bool isRtlLanguage(String languageCode) =>
    _rtlLocales.contains(languageCode.toLowerCase());
