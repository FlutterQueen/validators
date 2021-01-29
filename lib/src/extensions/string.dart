extension stringExtension on String {
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

  /// regx source : https://regexr.com/39nr7
  bool isURL() {
    final urlRegx = RegExp(
        r"[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)");
    return urlRegx.hasMatch(this.trim());
  }

  bool equal(String str) {
    return this == str;
  }

  bool equalIgnoreCase(String str) {
    return this.toLowerCase() == str.toLowerCase();
  }

  String get hardTrim {
    return this.replaceAll(' ', '');
  }
}
