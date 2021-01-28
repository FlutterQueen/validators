bool minLength(int min, String val) {
  return val.length > min;
}

bool maxLength(int max, String val) {
  return val.length < max;
}

bool isNotEmpty(String val) {
  return val.trim().isNotEmpty;
}

bool isEmpty(String val) {
  return val.trim().isNotEmpty;
}

bool isEmail(String val) {
  final emailRegx = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  return emailRegx.hasMatch(val.trim());
}
