import 'package:queen_validators/src/text_rule_class.dart';
import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

class MaxValue extends TextValidationRule {
  final num max;

  MaxValue(this.max, [String? error]) : super(error);

  @override
  bool isValid(String input) => maxValue(input, max);
  @override
  String get localizedError => throw UnimplementedError();
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
