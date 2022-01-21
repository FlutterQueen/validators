bool isDateAfter(Object? input, DateTime date) {
  DateTime? _input;
  if (input is String) {
    _input = DateTime.tryParse(input);
  } else if (input is DateTime) {
    _input = input;
  }
  return _input != null && _input.isAfter(date);
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

/// checks if the input is a valid `date` to parse by Dart `DateTime` class
bool isDate(String? v) => DateTime.tryParse(v ?? '') != null;
