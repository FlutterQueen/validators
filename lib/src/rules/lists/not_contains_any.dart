import 'package:queen_validators/src/text_rule_class.dart';
import 'package:nations/nations.dart';

import '../../../queen_validators.dart';
import 'contains_any.dart';

/// check if the value does not contain any item from the provided list

class NotContainsAny extends TextValidationRule {
  final List<String> value;

  NotContainsAny(
    this.value, [
    String? error,
  ]) : super(error);

  @override
  String get localizedError => throw UnimplementedError();

  @override
  bool isValid(String input) => notContainsAny(input, value);
}

bool notContainsAny(String v, List<String> list) {
  return !containsAny(v, list);
}
