import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input is match other string
class Match extends TextValidationRule {
  final String stringToMatchWith;

  Match(this.stringToMatchWith, [String? msg]) : super(msg);

  @override
  String get defaultError => 'did not match';

  @override
  bool isValid(String val) {
    return match(val, stringToMatchWith);
  }
}

/// checks if two `Strings` are the same
/// !`after trimming them`
bool match(Object val1, Object val2) {
  return val1 == val2;
}
