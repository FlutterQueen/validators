import 'package:queen_validators/src/functions/match.dart';
import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input is match other string
class Match extends TextValidationRule {
  final String stringToMatchWith;

  const Match(this.stringToMatchWith, [String? msg]) : super(msg);

  @override
  String get defaultError => 'did not match';

  @override
  bool isValid(String val) {
    return match(val, stringToMatchWith);
  }
}
