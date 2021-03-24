import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input characters length is smaller than the min field
class MaxLength extends QueenValidationRule {
  final int max;
  final bool trim;
  const MaxLength(this.max, {String? msg, this.trim = true}) : super(msg);

  @override
  String get errorMsg => 'max length is $max';

  @override
  bool validate(dynamic? val) {
    if (val == null) return true;
    if (val is String) {
      return trim ? val.trim().length <= max : val.length <= max;
    } else {
      return false;
    }
  }
}
