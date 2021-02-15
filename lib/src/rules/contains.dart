import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input does not contain the provided value;

class Contains extends QueenValidationRule {
  final String value;

  Contains(this.value, {String msg}) : super(msg);

  @override
  String get errorMsg => 'must contain $value';

  @override
  bool validate(String val) => val.trim().contains(value);
}
