import 'package:queen_validators/src/functions/match.dart';
import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input is match other string
class Match extends QueenValidationRule {
  final String stringToMatchWith;
  final bool? ignoreCase;
  const Match(this.stringToMatchWith, {String? msg, this.ignoreCase})
      : super(msg);

  @override
  String get errorMsg => 'did not match';

  @override
  bool validate(String val) {
    return match(val, stringToMatchWith, ignoreCase: ignoreCase!);
  }
}
