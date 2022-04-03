import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/src/rules/urls/is_url.dart';

void main() {
  group('is url tests', () {
    test('it should return true if the input is valid url', () {
      expect(
        IsUrl().isValid('http://www.google.com'),
        isTrue,
        reason: 'its start with http followed by :// and valid domain',
      );
      expect(
        IsUrl().isValid('https://www.google.com/'),
        isTrue,
        reason:
            'its start with https followed by :// and valid domain and with / still valid',
      );
      expect(
        IsUrl().isValid(
          'https://www.google.com/f34ef4e',
        ),
        isTrue,
        reason:
            'its start with https followed by :// and valid domain and with / and search query',
      );
    });
    test('it should return false if the input is un valid url', () {
      expect(
        IsUrl().isValid(''),
        isFalse,
        reason: 'its empty string',
      );
      expect(
        IsUrl().isValid('httpx:///'),
        isFalse,
        reason: 'its not valid protocol',
      );
      expect(
        IsUrl().isValid('https:efwfwefwe/'),
        isFalse,
        reason: 'its not valid protocol',
      );
      expect(
        IsUrl().isValid('HTTPS://google.com/'),
        isFalse,
        reason: 'its not valid protocol it should start with all smal cases',
      );
      expect(
        IsUrl().isValid('https//efwfwefwe/'),
        isFalse,
        reason: 'its not valid domain',
      );
      expect(
        IsUrl().isValid('http//efwfwefwe'),
        isFalse,
        reason: 'its not valid domain',
      );
    });

    test('it should return true if the error not null', () {
      expect(IsUrl().toString(), isNotNull);
    });
  });
}
