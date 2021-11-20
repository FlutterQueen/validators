import 'package:queen_validators/src/text_rule_class.dart';

class MinValue extends TextValidationRule {
  final num min;

  MinValue(this.min, [String message = 'below the minimum value'])
      : super(message);

  @override
  bool isValid(String input) => minValue(input, min);
}

bool minValue(Object? value, num min) {
  num? _val;
  if (value is String) {
    _val = num.tryParse(value);
  } else if (value is num) {
    _val = value;
  } else if (value is int) {
    _val = value;
  } else if (value is double) {
    _val = value;
  }
  return _val != null && _val >= min;
}
