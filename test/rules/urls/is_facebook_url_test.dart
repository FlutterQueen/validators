import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/src/rules/urls/is_facebook_url.dart';

void main() {
  group('test for facebook url', () {
    test(
      'valid cases for facebook url',
      () {
        expect(
          IsFacebookUrl().isValid('http://www.facebook.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsFacebookUrl().isValid('http://facebook.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsFacebookUrl().isValid('https://facebook.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsFacebookUrl().isValid('https://facebook.com/'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsFacebookUrl().isValid('https://facebook.com/search'),
          isTrue,
          reason: 'valid protocol, vlid domain,valid search query',
        );
      },
    );
    test(
      'unvalid cases for facebook url',
      () {
        expect(
          IsFacebookUrl().isValid('htt://www.facebook.com'),
          isFalse,
          reason: 'vot valid protocol',
        );
        expect(
          IsFacebookUrl().isValid('http://facebook.net'),
          isFalse,
          reason: 'not vlid domain',
        );
        expect(
          IsFacebookUrl().isValid('https:/facebook.com'),
          isFalse,
          reason: 'not valid protocol',
        );
        expect(
          IsFacebookUrl().isValid('https://youtube.com/'),
          isFalse,
          reason: 'not a facebook domain',
        );
        expect(
          IsFacebookUrl().isValid(''),
          isFalse,
          reason: 'empty url',
        );
      },
    );

    test(
      'valid case for localized error url',
      () {
        expect(
          IsFacebookUrl().localizedError,
          isNotNull,
          reason: 'because each rule must have a localized error',
        );
      },
    );
  });
}
