import 'package:queen_validators/src/text_rule_class.dart';

/// check if the value contain at lest one of String form the provided list

class ContainsAny extends TextValidationRule {
  final List<String> value;

  ContainsAny(this.value, [String? msg]) : super(msg);

  @override
  String get defaultError =>
      'must contain at least one of the keywords';

  @override
  bool isValid(String val) => containsAny(val, value);
}

// check if the provider string contains any keywords form the provided list
bool containsAny(String v, List<String> list) {
  return list.any(
    (e) => v.trim().toLowerCase().contains(e.trim().toLowerCase()),
  );
}
