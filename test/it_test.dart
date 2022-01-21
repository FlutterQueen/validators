import 'package:queen_validators/it.dart';
import 'package:test/test.dart';

void main() {
  group('is boolen func', () {
    const validBooleanFormat = [
      'true',
      'false',
      'True',
      'False',
      'TrUe',
      'FaLse ',
      true,
      false,
    ];
    const notValidBooleanFormat = ['truee', 'falsee', 'Tr0e', 't', 'f'];

    group('is valid boolean', () {
      for (final v in validBooleanFormat) {
        test(v, () => expect(isBool(v.toString()), isTrue));
      }
    });
    group('is not valid boolean format', () {
      for (final v in notValidBooleanFormat) {
        test(v, () => expect(isBool(v), isFalse));
      }
    });
    group('is valid boolean', () {
      const validBooleanFormat = [
        'true',
        'false',
        'True',
        'False',
        'TrUe',
        'FaLse ',
        true,
        false,
      ];
      for (final v in validBooleanFormat) {
        test(v, () => expect(isBool(v), isTrue));
      }
    });
    group('is not valid boolean format', () {
      for (final v in notValidBooleanFormat) {
        test(v, () => expect(isBool(v), isFalse));
      }
    });
  });
  group('is email func', () {
    test('it returns false if input is null', () {
      expect(isEmail(null), isFalse);
    });
    test('it returns false if input is empty', () {
      expect(isEmail(''), isFalse);
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
