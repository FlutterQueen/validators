import 'package:queen_validators/src/imp/validation.dart';

/// checks if input does not contain the provided value;

class NotContains extends TextValidationRule {
  final String value;

  const NotContains(this.value, [String? msg]) : super(msg);

  @override
  String get defaultError => 'must not contain $value';

  @override
  bool isValid(String val) => !val.trim().contains(value);
}
