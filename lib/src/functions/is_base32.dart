bool isBase32(String str) {
  final base32 = RegExp(r'/^[A-Z2-7]+=*$/');

  final len = str.length;
  if (len % 8 == 0 && base32.hasMatch(str)) {
    return true;
  }
  return false;
}
