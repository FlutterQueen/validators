import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart' hide isEmpty;

void main() {
  group(
    'isEmpty function',
    () {
      test('it returns true if input is null', () {
        expect(isEmpty(null), isTrue);
      });
      test(
        'trims the string before checking',
        () {
          const emptyStrings = [' ', '  ', '  ', '   ', '    '];
          for (final v in emptyStrings) {
            expect(isEmpty(v), isTrue);
          }
        },
      );
      test(
        'returns false if the string is not Empty',
        () {
          const notEmptyStrings = [
            ' a ',
            ' b',
            '  c    ',
            '   d          e',
            '    f           g'
          ];
          for (final v in notEmptyStrings) {
            expect(isEmpty(v), isFalse);
          }
        },
      );
      test(
        'returns true if the string is Empty',
        () => expect(isEmpty(''), isTrue),
      );
    },
  );

  group('is Empty rule', () {
    test(
      'return True when the value is empty after trimming',
      () {
        expect(IsEmpty().isValid(''), isTrue);
        expect(IsEmpty().isValid('   '), isTrue);
        expect(
          IsEmpty().isValid(
            '''

        ''',
          ),
          isTrue,
        );
      },
    );
    test(
      'return False when the trimmed text is not empty',
      () {
        expect(IsEmpty().isValid('q'), isFalse);
        expect(IsEmpty().isValid('abcdef'), isFalse);
        expect(IsEmpty().isValid('  word  '), isFalse);
      },
    );
  });
}
