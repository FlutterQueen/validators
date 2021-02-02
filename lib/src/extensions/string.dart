// collection of extions related to strig validations
extension stringExtension on String {
  /// return true if `trimmed string` is not empy
  bool get isNotEmptyString => this.trim().isNotEmpty;

  /// return true if `trimmed string` is empty
  bool get isEmptyEmptyString => this.trim().isEmpty;

  /// cheks if the value can be well formated email address
  bool isEmail() {
    final emailRegx = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return emailRegx.hasMatch(this.trim());
  }

  /// checks if well formatted `URL`
  bool isURL() {
    /// regx source : https://regexr.com/39nr7
    final urlRegx = RegExp(
        r"[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)");
    return urlRegx.hasMatch(this.trim());
  }

  /// checks if tow `strings` are the same
  /// !`after trimming them`
  bool match(String val, {bool ignoreCase = false}) {
    if (ignoreCase) {
      return val.trim().toLowerCase() == this.trim().toLowerCase();
    } else {
      return val.trim() == this.trim();
    }
  }

  /// check if `string` is in `List` of Strings
  /// ! automaticly ignore case sensitivty
  bool isIn(List<String> list) {
    return list.where((e) => this.match(e, ignoreCase: true)).length > 0;
  }

  /// check if `string` is `NOT` in `List` of Strings
  /// ! automaticly ignore case sensitivty
  bool isNotIn(List<String> list) {
    return list.where((e) => this.match(e, ignoreCase: true)).length == 0;
  }
}
