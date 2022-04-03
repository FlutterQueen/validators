// ignore_for_file: unused_import

import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/src/rules/urls/is_facebook_url.dart';
import 'package:queen_validators/src/rules/urls/is_youtube_url.dart';

void main() {
  group('test for youtube url', () {
    test(
      'valid cases for youtube url',
      () {
        expect(
          IsYoutubeUrl().isValid('http://www.youtube.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsYoutubeUrl().isValid('http://youtube.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsYoutubeUrl().isValid('https://youtube.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsYoutubeUrl().isValid('https://youtube.com/'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          IsYoutubeUrl().isValid(
            'https://youtube.com/watch?v=egn0FkBeAlA&ab_channel=ArabicRapnews',
          ),
          isTrue,
          reason: 'valid protocol, vlid domain,valid search query',
        );
      },
    );
    test(
      'unvalid cases for facebook url',
      () {
        expect(
          IsYoutubeUrl().isValid('htt://www.youtube.com'),
          isFalse,
          reason: 'vot valid protocol',
        );
        expect(
          IsYoutubeUrl().isValid('http://youtube.net'),
          isFalse,
          reason: 'not vlid domain',
        );
        expect(
          IsYoutubeUrl().isValid('https:/youtube.com'),
          isFalse,
          reason: 'not valid protocol',
        );
        expect(
          IsYoutubeUrl().isValid('https://instagram.com/'),
          isFalse,
          reason: 'not a youtube domain',
        );
        expect(
          IsYoutubeUrl().isValid(''),
          isFalse,
          reason: 'empty url',
        );
      },
    );

    test(
      'valid case for localized error url',
      () {
        expect(
          IsYoutubeUrl().toString(),
          isNotNull,
          reason: 'because each rule must have a localized error',
        );
      },
    );
  });
}
