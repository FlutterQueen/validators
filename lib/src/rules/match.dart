import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/src/extensions/string.dart';

/// checks if the input is not empty string
class Match extends QueenValidationRule<String> {
  final String stringToMatchWith;
  final bool ignoreCase;
  Match(this.stringToMatchWith, {String msg, this.ignoreCase})
      : assert(stringToMatchWith != null),
        super(msg);

  @override
  String get errorMsg => 'did not match';

  @override
  bool validate(String val) {
    return val.match(stringToMatchWith, ignoreCase: ignoreCase);
  }
}
