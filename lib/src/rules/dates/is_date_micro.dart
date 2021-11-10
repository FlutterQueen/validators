import 'package:queen_validators/queen_validators.dart';

class IsDateMicro extends TextValidationRule {
  final bool isUtc;
  IsDateMicro({
    this.isUtc = false,
    String? msg,
  }) : super(msg);

  @override
  String get defaultError => 'is not valid Micro Seconds Since Epoch';

  @override
  bool isValid(String input) => isDateMicro(input, isUtc: isUtc);
}

/// checks if the input is a valid `date` to parse by `DateTime.fromMicrosecondsSinceEpoch` factory
bool isDateMicro(String v, {bool isUtc = false}) {
  try {
    if (!isInt(v)) return false;
    DateTime.fromMicrosecondsSinceEpoch(int.parse(v), isUtc: isUtc);
    return true;
  } catch (e) {
    return false;
  }
}
