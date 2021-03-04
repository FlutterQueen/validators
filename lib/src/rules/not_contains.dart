import 'package:queen_validators/src/imp/validation.dart';

/// checks if input does not contain the provided value;

class NotContains extends QueenValidationRule {
  final String value;

  NotContains(this.value, {String? msg}) : super(msg);

  @override
  String get errorMsg => 'must not contain $value';

  @override
  bool validate(String val) => !val.trim().contains(value);
}
