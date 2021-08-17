bool base64(String str, {bool? urlSafe}) {
  final notBase64 = RegExp(r'/[^A-Z0-9+\/=]/i');
  final urlSafeBase64 = RegExp(r'/^[A-Z0-9_\-]*$/i');

  final len = str.length;
  if (urlSafe!) {
    return urlSafeBase64.hasMatch(str);
  }
  if (len % 4 != 0 || notBase64.hasMatch(str)) {
    return false;
  }
  final firstPaddingChar = str.indexOf('=');
  return firstPaddingChar == -1 ||
      firstPaddingChar == len - 1 ||
      (firstPaddingChar == len - 2 && str[len - 1] == '=');
}
