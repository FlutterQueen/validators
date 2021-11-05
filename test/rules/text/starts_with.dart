import 'package:test/test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  group(
    'MinLength rule',
    () {
      test('trims the string before checking', () {
        expect(StartsWith('q').isValid('    queen    '), isTrue);
      });

      test('returns true when text starts with pattren', () {
        expect(StartsWith('qu').isValid('queen'), isTrue);
      });

      test('returns false when text does not starts with pattren', () {
        expect(StartsWith('king').isValid('queen'), isFalse);
      });
    },
  );
}
