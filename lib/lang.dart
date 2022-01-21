const _rtlLocales = <String>[
  'ar', // Arabic
  'fa', // Farsi
  'he', // Hebrew
  'ps', // Pashto
  'ur', // Urdu
];

bool isLtrLanguage(Object languageCode) =>
    languageCode is String && !_rtlLocales.contains(languageCode.toLowerCase());

bool isRtlLanguage(Object languageCode) =>
    languageCode is String && _rtlLocales.contains(languageCode.toLowerCase());
