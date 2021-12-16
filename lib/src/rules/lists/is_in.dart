import 'package:queen_validators/src/text_rule_class.dart';
import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

/// checks if the input `is in` provided List;
class IsIn extends TextValidationRule {
  final List<String> list;
  IsIn(this.list, [String? error]) : super(error);

  @override
  bool isValid(String input) => isIn(input, list);
  @override
  String get localizedError => throw UnimplementedError();
}

///  check if `string` is in `List<String>`
bool isIn(
  dynamic v,
  List<dynamic> list,
) {
  if (v is String && list is List<String>) {
    return list.any((e) => e.compareTo(v) == 0);
  } else {
    return list.any((e) => e == v);
  }
}
