import 'package:queen_validators/src/rules/languages/is_rtl_language.dart';

bool isLTRLang(String input) {
  return !isRTLLang(input);
}
