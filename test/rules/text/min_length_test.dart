import 'package:test/test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  group(
    'MinLength rule',
    () {
      test('trims the string before checking', () {
        expect(MinLength(5).isValid('    queen    '), isTrue);
      });

      test('returns true when length equls the min length', () {
        expect(MinLength(5).isValid('queen'), isTrue);
      });
      test('returns true when length > min length', () {
        expect(MinLength(1).isValid('queen'), isTrue);
      });
      test('returns false when length < min length', () {
        expect(MinLength(10).isValid('queen'), isFalse);
      });
    },
  );
}
