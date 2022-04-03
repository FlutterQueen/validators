import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart';

class MinValue extends TextValidationRule {
  final num min;

  MinValue(this.min, [String? error]) : super(error);

  @override
  bool isValid(String input) => minValue(input, min);
  @override
  String get localizedError =>
      'validation.must_be_min'.args({'minNum': min.toString()});
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
