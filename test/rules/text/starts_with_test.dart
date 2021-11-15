import 'package:test/test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  group(
    'StartsWith rule',
    () {
      test('trims the string before checking', () {
        expect(StartsWith('q').isValid('    queen    '), isTrue);
      });

      test('returns true when text starts with pattern', () {
        expect(StartsWith('qu').isValid('queen'), isTrue);
      });

      test('returns false when text does not starts with pattern', () {
        expect(StartsWith('king').isValid('queen'), isFalse);
      });
    },
  );
}
