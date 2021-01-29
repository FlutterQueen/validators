extension StringValiadtors on String {
  bool required(int min) {
    return this != null && this.isNotEmpty;
  }

  bool minLength(int min) {
    return this.length > min;
  }

  bool maxLength(
    int max,
  ) {
    return this.length < max;
  }

  bool isNotEmptyString() {
    return this.trim().isNotEmpty;
  }

  bool isEmptyEmptyString() {
    return this.trim().isEmpty;
  }

  bool isEmail() {
    final emailRegx = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return emailRegx.hasMatch(this.trim());
  }
}
