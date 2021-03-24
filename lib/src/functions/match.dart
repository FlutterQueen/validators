/// checks if two `Strings` are the same
/// !`after trimming them`
bool match(String string1, String string2, {bool ignoreCase = false}) {
  if (ignoreCase) {
    return string1.trim().toLowerCase() == string2.trim().toLowerCase();
  } else {
    return string1.trim() == string2.trim();
  }
}
