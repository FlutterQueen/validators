import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  group('IsPort Rule', () {
    test('returns true if is valid port', () {
      expect(const IsPort().isValid('0'), isTrue, reason: 'Zero is valid port');
      expect(
        const IsPort().isValid('65535'),
        isTrue,
        reason: 'The Max port value',
      );
      expect(const IsPort().isValid('80'), isTrue, reason: 'valid port ');
      expect(
        const IsPort().isValid('80.0'),
        isTrue,
        reason: 'it convert the string to int in the end',
      );

      expect(
        const IsPort().isValid('  80.0 '),
        isTrue,
        reason: 'it trims the string',
      );
    });
    test('returns true if is valid port', () {
      expect(
        const IsPort().isValid('x0'),
        isFalse,
        reason: 'not valid to parse to int',
      );
      expect(
        const IsPort().isValid('6x5535'),
        isFalse,
        reason: 'not valid to parse to int',
      );
      expect(
        const IsPort().isValid('8x0'),
        isFalse,
        reason: 'not valid to parse to int',
      );
      expect(
        const IsPort().isValid('80x.0'),
        isFalse,
        reason: 'not valid to parse to int',
      );
      expect(const IsPort().isValid(''), isFalse, reason: 'empty');
      expect(
        const IsPort().isValid('-50'),
        isFalse,
        reason: 'not int the valid ports range',
      );
      expect(
        const IsPort().isValid('-75535'),
        isFalse,
        reason: 'not int the valid ports range',
      );
      expect(
        const IsPort().isValid('65536'),
        isFalse,
        reason: 'not int the valid ports range',
      );
    });
  });
  group('isPort Function', () {
    test(
      'it returns false if input is null',
      () => expect(
        isPort(null),
        isFalse,
        reason: 'null is not a valid port number',
      ),
    );
    test('it support numbers int double num', () {
      expect(isPort(80), isTrue);
      expect(isPort(80.0), isTrue);
    });
    test('it returns true if is port', () {
      expect(isPort('80'), isTrue);
    });
    test('it trims it', () {
      expect(isPort(' 80 '), isTrue);
    });
    test('it return true if is valid port', () {
      expect(isPort(0), isTrue);
      expect(isPort(65535), isTrue);
    });

    test('it returns false if have a fraction', () {
      expect(isPort(80.1), isFalse);
      expect(isPort(80.2), isFalse);
      expect(isPort(80.3), isFalse);
      expect(isPort(80.4), isFalse);
      expect(isPort(80.5), isFalse);
      expect(isPort(80.6), isFalse);
      expect(isPort(80.7), isFalse);
      expect(isPort(80.8), isFalse);
      expect(isPort(80.9), isFalse);
    });
  });
}
