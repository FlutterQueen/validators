import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  test(
    'it should return True when the text contains the provided word',
    () {
      const word = 'abcdef';
      expect(Contains('a').isValid(word), isTrue);
      expect(Contains('b').isValid(word), isTrue);
      expect(Contains('c').isValid(word), isTrue);
      expect(Contains('d').isValid(word), isTrue);
      expect(Contains('e').isValid(word), isTrue);
      expect(Contains('f').isValid(word), isTrue);
    },
  );
  test(
    'it should return False when the text does not contains the provided word',
    () {
      const word = 'abcdef';
      expect(Contains('g').isValid(word), isFalse);
      expect(Contains('h').isValid(word), isFalse);
      expect(Contains('i').isValid(word), isFalse);
    },
  );
  test(
    'it trims the string before validating',
    () {
      const word = '  Q  ';
      expect(Contains('Q').isValid(word), isTrue);
      expect(Contains(' ').isValid(word), isFalse);
    },
  );
}
