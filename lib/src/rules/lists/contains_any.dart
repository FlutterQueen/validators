import 'package:queen_validators/src/text_rule_class.dart';

/// check if the value contain at lest one of String form the provided list

class ContainsAny extends TextValidationRule {
  final List<String> value;
  bool? caseSensitive;
  ContainsAny(this.value);

  @override
  bool isValid(String input) => containsAny(input, value);
  @override
  String get error => throw UnimplementedError();
}

// check if the provided string contains any keywords form the provided list
bool containsAny(
  String v,
  List<String> list, {
  bool caseSensitive = false,
  bool trim = true,
}) {
  if (trim) {
    return list.any(
      (e) => caseSensitive
          ? v.trim().contains(e.trim())
          : v.trim().toLowerCase().contains(e.trim().toLowerCase()),
    );
  }
  return list.any(
    (e) => caseSensitive
        ? v.contains(e.trim())
        : v.toLowerCase().contains(e.toLowerCase()),
  );
}
