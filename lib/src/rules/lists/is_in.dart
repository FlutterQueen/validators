import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input `is in` provided List;
class IsIn extends TextValidationRule {
  final List<String> list;
  IsIn(this.list, [String? msg]) : super(msg ?? 'is not accepted');

  @override
  bool isValid(String input) => isIn(input, list);
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
