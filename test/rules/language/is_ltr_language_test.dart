import 'package:queen_validators/queen_validators.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('is RTL Rule ', () {
    test('return false if language is RTL', () {
      expect(IsLtrLanguage().isValid('ar'), isFalse);
      expect(IsLtrLanguage().isValid('fa'), isFalse);
      expect(IsLtrLanguage().isValid('he'), isFalse);
      expect(IsLtrLanguage().isValid('ps'), isFalse);
      expect(IsLtrLanguage().isValid('ur'), isFalse);
    });
    test('return true if language is LTR', () {
      expect(IsLtrLanguage().isValid('en'), isTrue);
      expect(IsLtrLanguage().isValid('fr'), isTrue);
      expect(IsLtrLanguage().isValid('it'), isTrue);
      expect(IsLtrLanguage().isValid('pr'), isTrue);
      expect(IsLtrLanguage().isValid('de'), isTrue);
    });
  });
  group('is RTL Function ', () {
    test('return false if language is RTL', () {
      expect(isLtrLanguage('ar'), isFalse);
      expect(isLtrLanguage('fa'), isFalse);
      expect(isLtrLanguage('he'), isFalse);
      expect(isLtrLanguage('ps'), isFalse);
      expect(isLtrLanguage('ur'), isFalse);
    });

    test('return ture if language is LTR', () {
      expect(isLtrLanguage('en'), isTrue);
      expect(isLtrLanguage('fr'), isTrue);
      expect(isLtrLanguage('it'), isTrue);
      expect(isLtrLanguage('pr'), isTrue);
      expect(isLtrLanguage('de'), isTrue);
    });
  });
}
