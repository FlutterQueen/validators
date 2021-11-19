import 'package:queen_validators/src/rules/phone/is_egy_number.dart';
import 'package:test/test.dart';

void main() {
  group('IsEgyptianPhone Rule', () {
    test('return true if is valid number', () {
      expect(IsEgyptianPhone().isValid('01123536627'), isTrue);
      expect(IsEgyptianPhone().isValid('01123536630'), isTrue);
      expect(IsEgyptianPhone().isValid('01515649287'), isTrue);
      expect(IsEgyptianPhone().isValid('01010234698'), isTrue);
      expect(IsEgyptianPhone().isValid('01235917628'), isTrue);
    });

    test('false cases', () {
      expect(IsEgyptianPhone().isValid('0112336627'), isFalse);
      expect(IsEgyptianPhone().isValid('01335917628'), isFalse);
      expect(IsEgyptianPhone().isValid('1'), isFalse);
      expect(IsEgyptianPhone().isValid('j'), isFalse);
      expect(IsEgyptianPhone().isValid(' '), isFalse);
      expect(IsEgyptianPhone().isValid('242424'), isFalse);
      expect(IsEgyptianPhone().isValid('11123536627'), isFalse);
    });

    //
  });
}
