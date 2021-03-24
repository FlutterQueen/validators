bool isBase58(String str) {
  final base58 = RegExp(r'/^[A-HJ-NP-Za-km-z1-9]*$/');
  return base58.hasMatch(str);
}
