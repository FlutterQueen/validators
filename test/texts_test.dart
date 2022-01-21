import 'package:queen_validators/text.dart';
import 'package:test/test.dart' hide isNotEmpty hide isEmpty;

void main() {
  group('IsRequired function ', () {
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

  group('min len func', () {
    test('minLength', () {
      expect(minLength('', 1), isFalse);
      expect(minLength('a', 2), isFalse);
      expect(minLength('ab', 3), isFalse);
      expect(minLength('abc', 4), isFalse);
      expect(minLength('abcd', 5), isFalse);
      expect(minLength('abcde', 6), isFalse);
      expect(minLength('abcdef', 7), isFalse);
      expect(minLength(' abcdef', 7), isFalse, reason: 'trimming');
      expect(minLength('  abcdef', 8), isFalse, reason: 'trimming');
    });
  });
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
  group('IsRequired function ', () {
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
  group(
    'match function',
    () {
      test('it returns false if input is null', () {
        expect(match(null, ''), isFalse);
        expect(match('', null), isFalse);
      });
      test(
        'returns True if the two objects are identical',
        () {
          const foo = 'foo';
          expect(match(foo, foo), isTrue);
        },
      );
      test(
        'returns false if the two objects are from different types',
        () {
          const foo = 'foo';
          const bar = 123;
          expect(match(foo, bar), isFalse);
        },
      );
      test(
        'returns true if the two objects are the matched',
        () {
          /// *  string type
          const stringFoo = 'queen';
          const stringBar = 'queen';
          expect(match(stringFoo, stringBar), isTrue);

          /// *  bool type
          const boolFoo = true;
          const boolBar = true;
          expect(match(boolFoo, boolBar), isTrue);

          /// *  int type
          const intFoo = 1;
          const intBar = 1;
          expect(match(intFoo, intBar), isTrue);

          /// *  double type
          const doubleFoo = 1.1;
          const doubleBar = 1.1;
          expect(match(doubleFoo, doubleBar), isTrue);
        },
      );
      test(
        'returns false if the two objects are not the matched',
        () {
          /// *  string type
          const stringFoo = 'queen';
          const stringBar = 'king';
          expect(match(stringFoo, stringBar), isFalse);

          /// *  bool type
          const boolFoo = true;
          const boolBar = false;
          expect(match(boolFoo, boolBar), isFalse);

          /// *  int type
          const intFoo = 1;
          const intBar = 2;
          expect(match(intFoo, intBar), isFalse);

          /// *  double type
          const doubleFoo = 1.1;
          const doubleBar = 2.2;
          expect(match(doubleFoo, doubleBar), isFalse);
        },
      );
    },
  );
}
