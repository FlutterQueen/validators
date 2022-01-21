/// can starts with or without`#`
/// must contains
bool isHexColor(String? input) {
  return input != null &&
      (RegExp(r'^#?([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$').hasMatch(input) ||
          RegExp(r'^#?([A-Fa-f0-9]{8}|[A-Fa-f0-9]{3})$').hasMatch(input));
}
