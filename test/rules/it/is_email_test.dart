import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  group('isEmail ()', () {
    test('it returns false if input is null', () {
      expect(isEmail(null), isFalse);
    });
    test('it returns false if input is empty', () {
      expect(isEmail(''), isFalse);
    });
  });
  group('IsEmail Rule', () {
    test('it returns false if input is Empty', () {
      expect(const IsEmail().isValid(''), isFalse);
    });
    test('it returns true if is email', () {
      expect(const IsEmail().isValid('queen@dev.com'), isTrue);
    });
  });
}
