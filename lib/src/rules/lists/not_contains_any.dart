import 'package:queen_validators/src/text_rule_class.dart';

import 'contains_any.dart';

/// check if the value does not contain any item from the provided list

class NotContainsAny extends TextValidationRule {
  final List<String> value;

  NotContainsAny(
    this.value,
  );
  @override
  String get error => throw UnimplementedError();

  @override
  bool isValid(String input) => notContainsAny(input, value);
}

bool notContainsAny(String v, List<String> list) {
  return !containsAny(v, list);
}
