import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  group(
    'MinLength rule',
    () {
      test('trims the string before checking', () {
        expect(MinLength(5).isValid('    queen    '), isTrue);
      });

      test('returns true when length equals the min length', () {
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

  test('minLength', () {
    expect(minLength('', 1), isFalse);
    expect(minLength('a', 2), isFalse);
    expect(minLength('ab', 3), isFalse);
    expect(minLength('abc', 4), isFalse);
    expect(minLength('abcd', 5), isFalse);
    expect(minLength('abcde', 6), isFalse);
    expect(minLength('abcdef', 7), isFalse);
    expect(minLength(' abcdef', 7), isFalse, reason: 'trimming');
    expect(minLength('  abcdef', 8), isFalse, reason: 'trimming');
  });
}
