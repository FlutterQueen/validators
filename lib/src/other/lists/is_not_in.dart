import 'package:queen_validators/src/text_rule_class.dart';

import 'is_in.dart';

/// checks if the input `is NOT in` provided List;
class IsNotIn extends TextValidationRule {
  final List<dynamic> list;
  IsNotIn(this.list, [String? msg]) : super(msg);

  @override
  String get defaultError => 'is not accepted';

  @override
  bool isValid(String input) => isNotIn(input, list);
}

/// check if `value` is `NOT` in `List`
bool isNotIn(dynamic v, List<dynamic> list) => !isIn(v, list);
