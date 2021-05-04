import 'package:queen_validators/src/functions/contains_any.dart';
import 'package:queen_validators/src/imp/validation.dart';

/// check if the value contain at lest one of String form the provided list

class ContainsAny extends TextValidationRule {
  final List<String> value;

  const ContainsAny(this.value, [String? msg]) : super(msg);

  @override
  String get defaultError => 'must contain at least one of the keywords';

  @override
  bool isValid(String val) => containsAny(val, value);
}
