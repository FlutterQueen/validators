// Business Identifier Codes
// aka Swift code
bool isBIC(String str) {
  final isBICReg = RegExp(r'/^[A-z]{4}[A-z]{2}\w{2}(\w{3})?$/');

  return isBICReg.hasMatch(str);
}
