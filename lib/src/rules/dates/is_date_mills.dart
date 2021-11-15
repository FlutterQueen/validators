import 'package:queen_validators/queen_validators.dart';

class IsDateMilli extends TextValidationRule {
  final bool isUtc;
  IsDateMilli({
    this.isUtc = false,
    String? msg,
  }) : super(msg ?? 'is not valid Milli seconds Since Epoch');

  @override
  bool isValid(String input) => isDateMills(input, isUtc: isUtc);
}

/// checks if the input is a valid `date` to parse by `DateTime.fromMillisecondsSinceEpoch` factory
bool isDateMills(String v, {bool isUtc = false}) {
  try {
    if (!isInt(v)) return false;
    DateTime.fromMillisecondsSinceEpoch(
      int.tryParse(v) ?? -1,
      isUtc: isUtc,
    );
    return true;
  } catch (e) {
    return false;
  }
}
