import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart';

class MaxValue extends TextValidationRule {
  final num max;

  MaxValue(this.max, [String? error]) : super(error);

  @override
  bool isValid(String input) => maxValue(input, max);
  @override
  String get localizedError =>
      'validation.must_be_max'.args({'maxNum': max.toString()});
}

bool maxValue(Object? value, num max) {
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
  return _val != null && _val <= max;
}
