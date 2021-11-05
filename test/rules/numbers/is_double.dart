import 'package:queen_validators/queen_validators.dart';
import 'package:queen_validators/src/rules/numbers/is_double.dart';
import 'package:test/test.dart';

void main() {
  const validDoubles = [
    '0.0',
    '1.0',
    '0.1',
    0.0,
    0.1,
    1.0,
  ];
  const notValidDoubles = [
    '0',
    '1',
    '2',
    0,
    1,
    2,
  ];

  group('Rule', () {
    test(
      'it should return True when the text is double digit number',
      () {
        for (final number in ['0.0', '1.0', '0.1']) {
          expect(IsDouble().isValid(number.toString()), isTrue);
        }
      },
    );
    test(
      'it should return False when the text is not double digit number',
      () {
        for (final number in ['0', '1', '2']) {
          expect(IsDouble().isValid(number.toString()), isFalse);
        }
      },
    );

    test(
      'it trims the string before validating',
      () {
        final word = '  10.11  ';
        expect(IsDouble().isValid(word), isTrue);
      },
    );
  });
}
