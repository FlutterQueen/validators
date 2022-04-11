import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/src/rules/urls/is_secure_url.dart';

void main() {
  group('IsSecureUrl Rule', () {
    test('returns true if is secure url', () {
      expect(
        const IsSecureUrl().isValid('https://www.google.com'),
        isTrue,
        reason: 'url is secure',
      );
      expect(
        const IsSecureUrl().isValid('HTTPS://www.google.com'),
        isTrue,
        reason: 'capital case url is secure',
      );
    });

    test('returns false if is not secure url', () {
      expect(
        const IsSecureUrl().isValid('http://www.google.com'),
        isFalse,
        reason: 'http is not secure protocol',
      );
    });
    test('returns false if url is null', () {
      expect(
        isSecureUrl(null),
        isFalse,
        reason: 'null is not secure protocol',
      );
    });
  });
}
