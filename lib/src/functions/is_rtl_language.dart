bool isRTLLang(String input) {
  return [
    'ar', // Arabic
    'az', // Azeri
    'dv', // Dhivehi/Maldivian
    'he', // Hebrew
    'ku', // Kurdish
    'fa', // Persian
    'ur', // Urdu
  ].contains(
    input.toLowerCase(),
  );
}
