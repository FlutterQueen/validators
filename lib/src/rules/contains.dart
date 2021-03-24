import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input does contain the provided value;

class Contains extends QueenValidationRule {
  final String value;

  const Contains(this.value, {String? msg}) : super(msg);

  @override
  String get errorMsg => 'must contain $value';

  @override
  bool validate(dynamic val) => (val as String).trim().contains(value);
}
