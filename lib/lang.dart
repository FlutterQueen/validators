const _rtlLocales = <String>[
  'ar', // Arabic
  'fa', // Farsi
  'he', // Hebrew
  'ps', // Pashto
  'ur', // Urdu
];

bool isLtrLanguage(Object languageCode) =>
    !_rtlLocales.contains(languageCode.toLowerCase());

bool isRtlLanguage(String languageCode) =>
    _rtlLocales.contains(languageCode.toLowerCase());
