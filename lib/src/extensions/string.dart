// collection of extions related to strig validations
extension StringExtension on String {
  /// return true if `trimmed string` is not empy
  bool get isNotEmptyString => trim().isNotEmpty;

  /// return true if `trimmed string` is empty
  bool get isEmptyString => trim().isEmpty;

  /// cheks if the value can be well formated email address
  bool get isEmail {
    /// ! not valid any more
    /// readon : userEmail@WithoutValidcom passed but should have failed !
    // final emailRegx = RegExp(
    //     r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    final emailRegx =
        RegExp(r"([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})");
    return emailRegx.hasMatch(trim());
  }

  /// checks if tow `strings` are the same
  /// !`after trimming them`
  bool match(String val, {bool ignoreCase = false}) {
    if (ignoreCase) {
      return val.trim().toLowerCase() == trim().toLowerCase();
    } else {
      return val.trim() == trim();
    }
  }

  /// check if `string` is in `List` of Strings
  /// ! automaticly ignore case sensitivty
  bool isIn(List<String> list) =>
      list.where((e) => match(e, ignoreCase: true)).isNotEmpty;

  /// check if `string` is `NOT` in `List` of Strings
  /// ! automaticly ignore case sensitivty
  bool isNotIn(List<String> list) =>
      list.where((e) => match(e, ignoreCase: true)).isEmpty;
  bool matchRegx(RegExp regExp) => regExp.hasMatch(this);
}
