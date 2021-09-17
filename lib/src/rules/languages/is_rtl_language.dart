bool isRTLLang(String input) {
  return [
    'ar', // Arabic
    'az', // Azure
    'dv', // drive's/Maldivian
    'he', // Hebrew
    'ku', // Kurdish
    'fa', // Persian
    'ur', // Urdu
  ].contains(
    input.toLowerCase(),
  );
}
