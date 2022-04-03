import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input `is in` provided List;
class IsIn extends TextValidationRule {
  final List<String> list;

  IsIn(this.list, [String? error]) : super(error);

  @override
  bool isValid(String input) => isIn(input, list);

  @override
  String get localizedError => 'validation.must_be_in_list'.args(
        {
          'list': list.toString(),
        },
      );
}

///  check if `string` is in `List<String>`
bool isIn(
  Object v,
  List<Object> list,
) {
  if (v is String && list is List<String>) {
    return list.any((e) => e.compareTo(v) == 0);
  } else {
    return list.any((e) => e == v);
  }
}
