import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  const validDates = <String>[
    '0',
    '-0',
    '-1',
    '1',
    '1629240375178547',
    '2629240375178547',
  ];
  const notValidDates = <String>[
    '0.1',
    '1.5',
    'foo',
    '26292403751785472629240375178547',
    'date-2629240375178547',
  ];

  test('valid isDateMicro test', () {
    for (final date in validDates) {
      // print((date));
      expect(isDateMicro(date), isTrue);
    }
  });
  test('***NOT*** valid isDateMicro test', () {
    for (final date in notValidDates) {
      expect(isDateMicro(date), isFalse);
    }
  });
}
