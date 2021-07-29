import 'package:queen_validators/src/functions/is_not_in.dart';
import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input `is NOT in` provided List;
class IsNotIn extends TextValidationRule {
  final List<dynamic> list;
  IsNotIn(this.list, [String? msg]) : super(msg);

  @override
  String get defaultError => 'is not accepted';

  @override
  bool isValid(String val) => isNotIn(val, list);
}
