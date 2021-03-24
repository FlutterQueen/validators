bool isHexColor(String str) {
  final hexColor =
      RegExp(r'/^#?([0-9A-F]{3}|[0-9A-F]{4}|[0-9A-F]{6}|[0-9A-F]{8})$/i');

  return hexColor.hasMatch(str);
}
