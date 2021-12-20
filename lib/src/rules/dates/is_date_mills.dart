import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `date` to parse by `DateTime.fromMillisecondsSinceEpoch` factory

class IsDateMillis extends TextValidationRule {
  final bool isUtc;

  /// * [isUtc] - if `true` the `DateTime` will be in UTC timezone, otherwise it will be in local timezone
  /// * [localizedError] - the error message to be displayed if the validation fails
  const IsDateMillis({
    this.isUtc = false,
    String? error,
  }) : super(error);

  @override
  bool isValid(String input) => isDateMills(input, isUtc: isUtc);

  @override
  String get localizedError => 'validation.not_valid_date_millis'.tr;
}

/// checks if the input is a valid `date` to parse by `DateTime.fromMillisecondsSinceEpoch` factory
bool isDateMills(String v, {bool isUtc = false}) {
  try {
    if (!(int.tryParse(v) != null)) return false;
    DateTime.fromMillisecondsSinceEpoch(
      int.tryParse(v) ?? -1,
      isUtc: isUtc,
    );
    return true;
  } catch (e) {
    return false;
  }
}
