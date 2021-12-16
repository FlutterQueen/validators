import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
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

  group(
    'Match rule',
    () {
      test(
        'does not trim the strings',
        () {
          expect(Match('   QUEEN   ').isValid('   QUEEN   '), isTrue);
        },
      );

      test(
        'returns True when are matched',
        () {
          expect(Match('queen').isValid('queen'), isTrue);
          expect(Match('queen_validators').isValid('queen_validators'), isTrue);
          expect(Match('QueeN_Validators').isValid('QueeN_Validators'), isTrue);
        },
      );
      test(
        'returns True when are matched and ignoring case sensitivity',
        () {
          expect(
            Match('queen', caseSensitive: false).isValid('Queen'),
            isTrue,
          );
          expect(
            Match('queen_validators', caseSensitive: false)
                .isValid('QUEEN_VALIDATORS'),
            isTrue,
          );
          expect(
            Match('QueeN _ Validators', caseSensitive: false)
                .isValid('QUEEN _ ValidAtorS'),
            isTrue,
          );
        },
      );
      test(
        'returns False when are not matched',
        () {
          expect(Match('queen').isValid('Fqueen'), isFalse);
          expect(
            Match('queen_validators').isValid('Fqueen_validators'),
            isFalse,
          );
          expect(
            Match('QueeN_Validators').isValid('FQueeN_Validators'),
            isFalse,
          );
        },
      );
      test(
        'returns False when are not matched and ignoring case sensitivity',
        () {
          expect(
            Match(
              'Fqueen',
              caseSensitive: false,
            ).isValid('Queen'),
            isFalse,
          );
          expect(
            Match(
              'queen_validators',
              caseSensitive: false,
            ).isValid('FQUEEN_VALIDATORS'),
            isFalse,
          );
          expect(
            Match('QueeN_Validators', caseSensitive: false).isValid(
              'FQUEEN_ValidAtorS',
            ),
            isFalse,
          );
        },
      );
    },
  );
}
