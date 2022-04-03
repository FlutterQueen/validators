import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

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
      expect(IsDateMillis().isValid(date), isTrue);
    }
  });
  test('valid isDateMills test with utc true', () {
    for (final date in validDates) {
      // print(date);
      expect(IsDateMillis(isUtc: true).isValid(date), isTrue);
    }
  });
  test('***NOT*** valid isDateMills test', () {
    for (final date in notValidDates) {
      expect(IsDateMillis().isValid(date), isFalse);
    }
  });
  test('***NOT*** valid isDateMills test with utc true', () {
    for (final date in notValidDates) {
      expect(IsDateMillis().isValid(date), isFalse);
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
  test('test error parameter', () {
    expect(IsDateMillis(isUtc: true, error: 'foo').errorMessage, 'foo');
  });
}
