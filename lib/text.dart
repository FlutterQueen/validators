/// `trim` the string then checks if `isEmpty`
/// if string is empty it will returns true
bool isEmpty(String? input) {
  return input?.trim().isEmpty ?? true;
}

/// `trim` the string then checks if `isNotEmpty`
bool isNotEmpty(String? string) {
  return string?.trim().isNotEmpty ?? false;
}

/// checks if two `Strings` are the same
bool match(
  Object? input,
  Object? other,
) =>
    input != null &&
        other != null &&
        input.runtimeType == other.runtimeType &&
        identical(input, other) ||
    input == other;
bool minLength(String? input, int min) {
  if (input == null) return false;
  return input.trim().length >= min;
}
