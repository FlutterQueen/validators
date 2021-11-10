import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart' hide isNotEmpty;

void main() {
  group('isNotEmpty function ', () {
    test('it returns false if input is null', () {
      expect(isNotEmpty(null), isFalse);
    });
    test(
      'trims the string before checking',
      () {
        const emptyStrings = [' ', '  ', '  ', '   ', '    '];
        for (final v in emptyStrings) {
          expect(isNotEmpty(v), isFalse);
        }
      },
    );
    test(
      'returns True if the string is not Empty',
      () {
        const notEmptyStrings = [
          ' a ',
          ' b',
          '  c    ',
          '   d          e',
          '    f           g'
        ];
        for (final v in notEmptyStrings) {
          expect(isNotEmpty(v), isTrue);
        }
      },
    );
    test(
      'returns true if the string is not Empty',
      () => expect(isNotEmpty('a'), isTrue),
    );
  });

  group('IsNotEmpty rule', () {
    test(
      'it should return True when the there is text even single char',
      () {
        expect(IsNotEmpty().isValid('q'), isTrue);
        expect(IsNotEmpty().isValid('abcdef'), isTrue);
        expect(IsNotEmpty().isValid('  word  '), isTrue);
      },
    );
    test(
      'it should return False when the trimmed text is empty',
      () {
        expect(IsNotEmpty().isValid(''), isFalse);
        expect(IsNotEmpty().isValid('   '), isFalse);
        expect(IsNotEmpty().isValid('''

        
        '''), isFalse);
      },
    );
  });
  group('IsRequired rule', () {
    test(
      'it should return True when the there is text even single char',
      () {
        expect(IsRequired().isValid('q'), isTrue);
        expect(IsRequired().isValid('abcdef'), isTrue);
        expect(IsRequired().isValid('  word  '), isTrue);
      },
    );
    test(
      'it should return False when the trimmed text is empty',
      () {
        expect(IsRequired().isValid(''), isFalse);
        expect(IsRequired().isValid('   '), isFalse);
        expect(IsRequired().isValid('''

        
        '''), isFalse);
      },
    );
  });
}
