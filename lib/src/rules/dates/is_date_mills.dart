import 'package:queen_validators/src/rules/numbers/is_int.dart';
import 'package:queen_validators/src/text_rule_class.dart';

class IsDateMilli extends TextValidationRule {
  final bool isUtc;
  IsDateMilli({
    this.isUtc = false,
    String? msg,
  }) : super(msg);

  @override
  String get defaultError => 'is not valid Milli seconds Since Epoch';

  @override
  bool isValid(String val) => isDateMills(val, isUtc: isUtc);
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
