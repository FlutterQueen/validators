import 'package:queen_validators/src/text_rule_class.dart';
import 'package:nations/nations.dart';

import '../../../queen_validators.dart';
import 'is_in.dart';

/// checks if the input `is NOT in` provided List;
class IsNotIn extends TextValidationRule {
  final List<dynamic> list;
  IsNotIn(this.list);

  @override
  bool isValid(String input) => isNotIn(input, list);
  @override
  String get error => throw UnimplementedError();
}

/// check if `value` is `NOT` in `List`
bool isNotIn(dynamic v, List<dynamic> list) => !isIn(v, list);
