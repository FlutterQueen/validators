bool isAscii(String str) {
  final ascii = RegExp(r'/^[\x00-\x7F]+$/');

  return ascii.hasMatch(str);
}
