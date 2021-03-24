import 'package:queen_validators/src/functions/is_not_in.dart';
import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input `is NOT in` provided List;
class IsNotIn extends QueenValidationRule {
  final List<String> list;
  const IsNotIn(this.list, {String? msg}) : super(msg);

  @override
  String get errorMsg => 'is not accepted';

  @override
  bool validate(String val) {
    return isNotIn(val, list);
  }
}
