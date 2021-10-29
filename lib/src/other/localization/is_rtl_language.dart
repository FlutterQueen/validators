const _rtlLanuages = <String>[
  'ar', // Arabic
  'fa', // Farsi
  'he', // Hebrew
  'ps', // Pashto
  'ur', // Urdu
];

bool isRtlLanguage(String languageCode) =>
    _rtlLanuages.contains(languageCode.toLowerCase());

bool isLtrLanguage(String languageCode) => !isRtlLanguage(languageCode);
