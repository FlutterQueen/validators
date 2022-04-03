import '../../../queen_validators.dart';

/// checks if the input is a valid `date` to parse by
///  `DateTime.fromMillisecondsSinceEpoch` factory

class IsDateMillis extends TextValidationRule {
  final bool isUtc;

  /// * [isUtc] - if `true` the `DateTime` will be in UTC timezone,
  /// * otherwise it will be in local timezone

  IsDateMillis({
    this.isUtc = false,
    String? error,
  }) : super(error);

  @override
  bool isValid(String input) => isDateMills(input, isUtc: isUtc);

  @override
  String toString() => 'validation.not_valid_date_millis';
}

/// checks if the input is a valid `date` to parse by `
/// DateTime.fromMillisecondsSinceEpoch` factory
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
