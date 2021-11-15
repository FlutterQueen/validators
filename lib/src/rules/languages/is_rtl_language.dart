const _rtlLocales = <String>[
  'ar', // Arabic
  'fa', // Farsi
  'he', // Hebrew
  'ps', // Pashto
  'ur', // Urdu
];

bool isRtlLanguage(String languageCode) =>
    _rtlLocales.contains(languageCode.toLowerCase());

bool isLtrLanguage(String languageCode) =>
    !_rtlLocales.contains(languageCode.toLowerCase());
