import 'package:queen_validators/lang.dart';
import 'package:test/test.dart';

void main() {
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
  group('is RTL Function ', () {
    test('return true if language is RTL', () {
      expect(isRtlLanguage('ar'), isTrue);
      expect(isRtlLanguage('fa'), isTrue);
      expect(isRtlLanguage('he'), isTrue);
      expect(isRtlLanguage('ps'), isTrue);
      expect(isRtlLanguage('ur'), isTrue);
    });

    test('return false if language is LTR', () {
      expect(isRtlLanguage('en'), isFalse);
      expect(isRtlLanguage('as'), isFalse);
      expect(isRtlLanguage('sd'), isFalse);
      expect(isRtlLanguage('gg'), isFalse);
      expect(isRtlLanguage('jg'), isFalse);
    });
  });
}
