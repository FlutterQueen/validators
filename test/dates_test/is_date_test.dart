import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  const validDates = <String>[
    '2017-11-10 00:26:13.373469',
    '2017-11-10 00:26:13',
    '2017-11-10 22:26:13.373469Z',
    '2017-11-10',
  ];
  const notValidDates = <String>[
    /// using `/` instead of `-` will case faliure
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
}
