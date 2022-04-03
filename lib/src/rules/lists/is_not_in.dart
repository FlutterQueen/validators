import '../../../queen_validators.dart';

/// checks if the input `is NOT in` provided List;
class IsNotIn extends TextValidationRule {
  final List<Object> list;

  IsNotIn(this.list, [String? error]) : super(error);

  @override
  bool isValid(String input) => isNotIn(input, list);

  @override
  String toString() => 'validation.must_not_be_in_list';
}

/// check if `value` is `NOT` in `List`
bool isNotIn(Object v, List<Object> list) => !isIn(v, list);
