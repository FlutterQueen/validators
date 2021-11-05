bool isBtcAddress(String str) {
  final bech32 = RegExp(r'/^(bc1)[a-z0-9]{25,39}$/');
  final base58 = RegExp(r'/^(1|3)[A-HJ-NP-Za-km-z1-9]{25,39}$/');
  // check for bech32
  if (str.startsWith('bc1')) {
    return bech32.hasMatch(str);
  }
  return base58.hasMatch(str);
}
