bool isEgyptianNumber(String str) {
  final phoneRegX = RegExp('^01[0125][0-9]{8}\$');

  return phoneRegX.hasMatch(str);
}

bool isKsaPhone(String input) {
  return RegExp(r'^(009665|9665|\+9665|05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$')
      .hasMatch(input);
}
