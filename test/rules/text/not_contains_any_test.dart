import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  group(
    'NotContains rule ',
    () {
      test(
        'it should return True when the text does not contains the provided word',
        () {
          const word = 'xxxxxxxx';
          expect(NotContains('a').isValid(word), isTrue);
          expect(NotContains('b').isValid(word), isTrue);
          expect(NotContains('c').isValid(word), isTrue);
          expect(NotContains('d').isValid(word), isTrue);
          expect(NotContains('e').isValid(word), isTrue);
          expect(NotContains('f').isValid(word), isTrue);
        },
      );
      test(
        'it should return False when the text does not contains the provided word',
        () {
          const word = 'ghi';
          expect(NotContains('g').isValid(word), isFalse);
          expect(NotContains('h').isValid(word), isFalse);
          expect(NotContains('i').isValid(word), isFalse);
        },
      );
      test(
        'it trims the string before validating',
        () {
          const word = '  Q  ';
          expect(NotContains('V').isValid(word), isTrue);
          expect(NotContains(' ').isValid(word), isTrue);
        },
      );
    },
  );
}
