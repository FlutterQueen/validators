import 'package:queen_validators/phones.dart';
import 'package:test/test.dart';

void main() {
  group('IsEgyptianPhone Rule', () {
    test('return true if is valid number', () {
      expect(isEgyptianNumber('01123536627'), isTrue);
      expect(isEgyptianNumber('01123536630'), isTrue);
      expect(isEgyptianNumber('01515649287'), isTrue);
      expect(isEgyptianNumber('01010234698'), isTrue);
      expect(isEgyptianNumber('01235917628'), isTrue);
    });

    test('false cases', () {
      expect(isEgyptianNumber('0112336627'), isFalse);
      expect(isEgyptianNumber('01335917628'), isFalse);
      expect(isEgyptianNumber('1'), isFalse);
      expect(isEgyptianNumber('j'), isFalse);
      expect(isEgyptianNumber(' '), isFalse);
      expect(isEgyptianNumber('242424'), isFalse);
      expect(isEgyptianNumber('11123536627'), isFalse);
    });

    //
  });

  group('IsKSAPhone Rule', () {
    test('return true if is valid number', () {
      expect(isKsaPhone('966512345678'), isTrue);
      expect(isKsaPhone('+966512345678'), isTrue);
      expect(isKsaPhone('00966512345678'), isTrue);
      expect(isKsaPhone('512345678'), isTrue);
      expect(isKsaPhone('0512345678'), isTrue);
    });

    test('false cases', () {
      expect(isKsaPhone('9665123456789'), isFalse);
      expect(isKsaPhone('01335917628'), isFalse);
      expect(isKsaPhone('1'), isFalse);
      expect(isKsaPhone('j'), isFalse);
      expect(isKsaPhone(' '), isFalse);
      expect(isKsaPhone('242424'), isFalse);
      expect(isKsaPhone('11123536627'), isFalse);
    });

    //
  });
}
