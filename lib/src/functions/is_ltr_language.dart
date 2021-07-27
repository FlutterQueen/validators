import 'package:queen_validators/src/functions/is_rtl_language.dart';

bool isLTRLang(String input) {
  return !isRTLLang(input);
}
