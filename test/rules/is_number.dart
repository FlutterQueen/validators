import 'package:queen_validators/src/rules/numbers/is_number.dart';
import 'package:test/test.dart';

const _validNumbers = <String>[
  '0',
  '01',
  '123',
  '-123',
  '-0',
  '50.5',
  '0.5',
  '.5',
  '1.0',
  '0.0',
];
const _notValidNumbers = <String>[
  'a0',
  'O12',
  '50s',
  '  ',
  '',
  'twxt',
];
void main() {
  test('is valid number', () {
    for (final number in _validNumbers) {
      expect(isNumber(number), isTrue);
    }
  });
  test('is not valid number', () {
    for (final number in _notValidNumbers) {
      expect(isNumber(number), isFalse);
    }
  });
}
