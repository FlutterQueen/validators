import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Rule', () {
    test(
      'it should return True when the text is double digit number',
      () {
        for (final number in ['0.0', '1.0', '0.1']) {
          expect(IsDouble().isValid(number.toString()), isTrue);
        }
      },
    );
    test(
      'it should return False when the text is not double digit number',
      () {
        for (final number in ['0', '1', '2']) {
          // TODO: fix this test
          expect(IsDouble().isValid(number), isFalse);
        }
      },
    );

    test(
      'it trims the string before validating',
      () {
        final word = '  10.11  ';
        expect(IsDouble().isValid(word), isTrue);
      },
    );
  });

  group('isDouble function', () {
    test('it returns false if input is null', () {
      expect(isDouble(null), isFalse);
    });
    test('it returns true if is valid double', () {
      expect(isDouble('0.0'), isTrue);
      expect(isDouble('5.5'), isTrue);
      expect(isDouble('1.0'), isTrue);
      expect(isDouble(0.0), isTrue);
      expect(isDouble(5.0), isTrue);
      expect(isDouble(0.5), isTrue);
    });
  });
  test('it returns false if is not double', () {
    expect(isDouble('x'), isFalse);
    expect(isDouble('x5.5'), isFalse);
    expect(isDouble('1.0x'), isFalse);
  });
}
