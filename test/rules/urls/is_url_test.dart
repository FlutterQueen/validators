import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/src/rules/urls/is_url.dart';

void main() {
  group('is url tests', () {
    test('it should return true if the input is valid url', () {
      final List<String> _validUrls = [
        'http://www.google.com',
        'https://www.google.com/',
        'https://www.google.com/f34ef4e',
        'https://www.google.com/f34ef4e',
      ];
      for (final url in _validUrls) {
        expect(IsUrl().isValid(url), isTrue);
      }
    });
    test('it should return false if the input is un valid url', () {
      final List<String> _unValidUrls = [
        '',
        'httpx:///',
        'httpx:///',
        'https//efwfwefwe/',
        'https:efwfwefwe/',
        'https:/efwfwefwe/',
        'http/efwfwefwe/',
        'Http://efwfwefwe',
        'HTTPS://google.com/',
        'https://efwfwefwe/',
        'https://efwfwefwe',
        'http://efwfwefwe',
        'https://efwfwefwe/fewefewf',
        'http://efwfwefwe/fewf',
        'https://www.efwfwefwe/fewf',
        'http://www.efwfwefwe/fewf',
      ];
      for (final url in _unValidUrls) {
        expect(IsUrl().isValid(url), isFalse);
      }
    });

    test('it should return true if the input is valid url', () {
      expect(IsUrl().localizedError, 'this is not a valid url');
    });
  });
}
