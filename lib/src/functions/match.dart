/// checks if two `Strings` are the same
/// !`after trimming them`
bool match(dynamic? val1, dynamic? val2, {bool ignoreCase = false}) {
  if (val1 == null || val2 == null) {
    return false;
  }
  if (val1 is String && val2 is String) {
    if (ignoreCase) {
      return val1.trim().toLowerCase() == val2.trim().toLowerCase();
    } else {
      return val1.trim() == val2.trim();
    }
  } else {
    return val1 == val2;
  }
}
