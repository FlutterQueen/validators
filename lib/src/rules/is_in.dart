import 'package:queen_validators/src/functions/is_in.dart';
import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input `is in` provided List;
class IsIn extends QueenValidationRule {
  final List<String> list;
  const IsIn(this.list, {String? msg}) : super(msg);

  @override
  String get errorMsg => 'is not accepted';

  @override
  bool validate(dynamic val) {
    return isIn(val, list);
  }
}
