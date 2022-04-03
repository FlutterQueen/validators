import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/src/rules/urls/is_instgram_url.dart';

void main() {
  group('test for instagrm url', () {
    test(
      'valid cases for instagrm url',
      () {
        expect(
          IsInstagramUrl().isValid('http://www.instagram.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsInstagramUrl().isValid('http://instagram.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsInstagramUrl().isValid('https://instagram.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsInstagramUrl().isValid('https://instagram.com/'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsInstagramUrl().isValid('https://instagram.com/search'),
          isTrue,
          reason: 'valid protocol, vlid domain,valid search query',
        );
      },
    );
    test(
      'unvalid cases for instagrm url',
      () {
        expect(
          IsInstagramUrl().isValid('htt://www.instagram.com'),
          isFalse,
          reason: 'vot valid protocol',
        );
        expect(
          IsInstagramUrl().isValid('http://instagram.net'),
          isFalse,
          reason: 'not vlid domain',
        );
        expect(
          IsInstagramUrl().isValid('https:/instagram.com'),
          isFalse,
          reason: 'not valid protocol',
        );
        expect(
          IsInstagramUrl().isValid('https://facebook.com/'),
          isFalse,
          reason: 'not a instagrm domain',
        );
        expect(
          IsInstagramUrl().isValid(''),
          isFalse,
          reason: 'empty url',
        );
      },
    );

    test(
      'valid case for localized error url',
      () {
        expect(
          IsInstagramUrl().toString(),
          isNotNull,
          reason: 'because each rule must have a localized error',
        );
      },
    );
  });
}
