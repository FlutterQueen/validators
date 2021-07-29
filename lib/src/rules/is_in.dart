import 'package:queen_validators/src/functions/is_in.dart';
import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input `is in` provided List;
class IsIn extends TextValidationRule {
  final List<String> list;
  IsIn(this.list, [String? msg]) : super(msg);

  @override
  String get defaultError => 'is not accepted';

  @override
  bool isValid(String val) => isIn(val, list);
}
