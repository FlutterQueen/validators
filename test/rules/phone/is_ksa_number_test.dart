import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  group('IsKSAPhone Rule', () {
    test('return true if is valid number', () {
      expect(ISKsaPhone().isValid('966512345678'), isTrue);
      expect(ISKsaPhone().isValid('+966512345678'), isTrue);
      expect(ISKsaPhone().isValid('00966512345678'), isTrue);
      expect(ISKsaPhone().isValid('512345678'), isTrue);
      expect(ISKsaPhone().isValid('0512345678'), isTrue);
    });

    test('false cases', () {
      expect(ISKsaPhone().isValid('9665123456789'), isFalse);
      expect(ISKsaPhone().isValid('01335917628'), isFalse);
      expect(ISKsaPhone().isValid('1'), isFalse);
      expect(ISKsaPhone().isValid('j'), isFalse);
      expect(ISKsaPhone().isValid(' '), isFalse);
      expect(ISKsaPhone().isValid('242424'), isFalse);
      expect(ISKsaPhone().isValid('11123536627'), isFalse);
    });

    //
  });
}
