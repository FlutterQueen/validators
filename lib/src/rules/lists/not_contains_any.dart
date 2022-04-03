import '../../../queen_validators.dart';

/// check if the value does not contain any item from the provided list

class NotContainsAny extends TextValidationRule {
  final List<String> value;

  NotContainsAny(
    this.value, [
    String? error,
  ]) : super(error);

  @override
  String toString() => 'validation.must_not_contains_any';

  @override
  bool isValid(String input) => notContainsAny(input, value);
}

bool notContainsAny(String v, List<String> list) {
  return !containsAny(v, list);
}
