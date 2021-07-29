import 'package:queen_validators/src/functions/max_length.dart';
import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input characters length is smaller than the min field
class MaxLength extends TextValidationRule {
  final int max;

  MaxLength(this.max, [String? msg]) : super(msg);

  @override
  String get defaultError => 'max length is $max';

  @override
  bool isValid(String val) {
    return maxLength(val, max);
  }
}
