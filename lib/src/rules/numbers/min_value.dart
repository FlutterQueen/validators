import 'package:queen_validators/src/text_rule_class.dart';
import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

class MinValue extends TextValidationRule {
  final num min;

  MinValue(this.min);

  @override
  bool isValid(String input) => minValue(input, min);
  @override
  String get error => throw UnimplementedError();
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
