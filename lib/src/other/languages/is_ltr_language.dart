import 'package:queen_validators/queen_validators.dart';

bool isLTRLang(String input) {
  return !isRTLLang(input);
}
