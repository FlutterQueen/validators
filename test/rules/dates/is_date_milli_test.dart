import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
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
      expect(IsDateMilli().isValid(date), isTrue);
    }
  });
  test('***NOT*** valid isDateMills test', () {
    for (final date in notValidDates) {
      expect(IsDateMilli().isValid(date), isFalse);
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
}
