import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  group(
    'MaxLength rule',
    () {
      test('trims the string before checking', () {
        expect(MaxLength(5).isValid('    queen    '), isTrue);
      });

      test('returns true when length equals the max length', () {
        expect(MaxLength(5).isValid('queen'), isTrue);
      });
      test('returns true when length < max length', () {
        expect(MaxLength(10).isValid('queen'), isTrue);
      });
      test('returns false when length >  max length', () {
        expect(MaxLength(1).isValid('queen'), isFalse);
      });
    },
  );
}
