import 'package:queen_validators/src/rules/index.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('is RTL Rule ', () {
    test('return true if language is RTL', () {
      expect(IsRTLLanguage().isValid('ar'), isTrue);
      expect(IsRTLLanguage().isValid('fa'), isTrue);
      expect(IsRTLLanguage().isValid('he'), isTrue);
      expect(IsRTLLanguage().isValid('ps'), isTrue);
      expect(IsRTLLanguage().isValid('ur'), isTrue);
    });
    test('return false if language is LTR', () {
      expect(IsRTLLanguage().isValid('en'), isFalse);
      expect(IsRTLLanguage().isValid('as'), isFalse);
      expect(IsRTLLanguage().isValid('sd'), isFalse);
      expect(IsRTLLanguage().isValid('gg'), isFalse);
      expect(IsRTLLanguage().isValid('jg'), isFalse);
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
