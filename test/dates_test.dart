import 'package:queen_validators/date.dart';
import 'package:test/test.dart';

void main() {
  group('isDateAfter Func', () {
    test('it returns false if the input is null', () {
      final result = isDateAfter(null, DateTime.now());
      expect(result, isFalse);
    });
    test(
      'it returns false if the input Empty',
      () => expect(
        isDateAfter('', DateTime.now()),
        isFalse,
        reason: 'empty strings arent valid dates ',
      ),
    );
    test('it returns false if the date is not after the current date', () {
      expect(
        isDateAfter(
          DateTime.now(),
          DateTime.now().add(
            const Duration(days: 1),
          ),
        ),
        isFalse,
      );
    });
    test('it returns false if the date is equal current date', () {
      expect(
        isDateAfter(
          DateTime.now(),
          DateTime.now(),
        ),
        isFalse,
      );
    });
    test('it returns false if the input int', () {
      expect(
        isDateAfter(
          23,
          DateTime.now(),
        ),
        isFalse,
      );
    });
    test('it returns true if the input after the current Date', () {
      expect(
        isDateAfter(
          DateTime.now().add(
            const Duration(days: 1),
          ),
          DateTime.now(),
        ),
        isTrue,
      );
    });
  });

  group('is date millis test', () {
    const validDates = <String>[
      '1',
      '1629240375178547',
      '2629240375178547',
      '0',
      '-0',
      '-1',
    ];
    const notValidDates = <String>[
      '0.1',
      'foo',
      'date-2629240375178547',
      '26292403751785472629240375178547',
    ];
    test('valid isDateMills test', () {
      for (final date in validDates) {
        // print(date);
        expect(isDateMills(date), isTrue);
      }
    });
    test('valid isDateMills test with utc true', () {
      for (final date in validDates) {
        // print(date);
        expect(isDateMills(date), isTrue);
      }
    });
    test('***NOT*** valid isDateMills test', () {
      for (final date in notValidDates) {
        expect(isDateMills(date), isFalse);
      }
    });
    test('***NOT*** valid isDateMills test with utc true', () {
      for (final date in notValidDates) {
        expect(isDateMills(date), isFalse);
      }
    });
    test('valid isDateMills test', () {
      for (final date in validDates) {
        // print(date);
        expect(isDateMills(date), isTrue);
      }
    });
    test('***NOT*** valid isDateMills test', () {
      for (final date in notValidDates) {
        expect(isDateMills(date), isFalse);
      }
    });
  });

  group('is date test', () {
    const validDates = <String>[
      '2017-11-10 00:26:13.373469',
      '2017-11-10 00:26:13',
      '2017-11-10 22:26:13.373469Z',
      '2017-11-10',
    ];
    const notValidDates = <String>[
      /// using `/` instead of `-` will case failure
      '2017/11/10 00:26:13.373469',
      '2017/11/10 22:26:13.373469Z',
      '2017/11/10',
    ];

    test('valid dates test', () {
      for (final date in validDates) {
        expect(isDate(date), isTrue);
      }
    });
    test('***NOT*** valid dates test', () {
      for (final date in notValidDates) {
        expect(isDate(date), isFalse);
      }
    });
    test('valid dates test', () {
      for (final date in validDates) {
        expect(isDate(date), isTrue);
      }
    });
    test('***NOT*** valid dates test', () {
      for (final date in notValidDates) {
        expect(isDate(date), isFalse);
      }
    });
  });
}
