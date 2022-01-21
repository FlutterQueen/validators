import 'package:queen_validators/urls.dart';
import 'package:test/test.dart';

void main() {
  group('test for facebook url', () {
    test(
      'valid cases for facebook url',
      () {
        expect(
          isFacebookUrlValid('http://www.facebook.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isFacebookUrlValid('http://facebook.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isFacebookUrlValid('https://facebook.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isFacebookUrlValid('https://facebook.com/'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isFacebookUrlValid('https://facebook.com/search'),
          isTrue,
          reason: 'valid protocol, vlid domain,valid search query',
        );
      },
    );
    test(
      'unvalid cases for facebook url',
      () {
        expect(
          isFacebookUrlValid('htt://www.facebook.com'),
          isFalse,
          reason: 'vot valid protocol',
        );
        expect(
          isFacebookUrlValid('http://facebook.net'),
          isFalse,
          reason: 'not vlid domain',
        );
        expect(
          isFacebookUrlValid('https:/facebook.com'),
          isFalse,
          reason: 'not valid protocol',
        );
        expect(
          isFacebookUrlValid('https://youtube.com/'),
          isFalse,
          reason: 'not a facebook domain',
        );
        expect(
          isFacebookUrlValid(''),
          isFalse,
          reason: 'empty url',
        );
      },
    );
  });

  group('test for instagrm url', () {
    test(
      'valid cases for instagrm url',
      () {
        expect(
          isInstgramUrlValid('http://www.instagram.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isInstgramUrlValid('http://instagram.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isInstgramUrlValid('https://instagram.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isInstgramUrlValid('https://instagram.com/'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isInstgramUrlValid('https://instagram.com/search'),
          isTrue,
          reason: 'valid protocol, vlid domain,valid search query',
        );
      },
    );
    test(
      'unvalid cases for instagrm url',
      () {
        expect(
          isInstgramUrlValid('htt://www.instagram.com'),
          isFalse,
          reason: 'vot valid protocol',
        );
        expect(
          isInstgramUrlValid('http://instagram.net'),
          isFalse,
          reason: 'not vlid domain',
        );
        expect(
          isInstgramUrlValid('https:/instagram.com'),
          isFalse,
          reason: 'not valid protocol',
        );
        expect(
          isInstgramUrlValid('https://facebook.com/'),
          isFalse,
          reason: 'not a instagrm domain',
        );
        expect(
          isInstgramUrlValid(''),
          isFalse,
          reason: 'empty url',
        );
      },
    );
  });

  group('is url tests', () {
    test('it should return true if the input is valid url', () {
      expect(
        isUrlValid('http://www.google.com'),
        isTrue,
        reason: 'its start with http followed by :// and valid domain',
      );
      expect(
        isUrlValid('https://www.google.com/'),
        isTrue,
        reason:
            'its start with https followed by :// and valid domain and with / still valid',
      );
      expect(
        isUrlValid(
          'https://www.google.com/f34ef4e',
        ),
        isTrue,
        reason:
            'its start with https followed by :// and valid domain and with / and search query',
      );
    });
    test('it should return false if the input is un valid url', () {
      expect(
        isUrlValid(''),
        isFalse,
        reason: 'its empty string',
      );
      expect(
        isUrlValid('httpx:///'),
        isFalse,
        reason: 'its not valid protocol',
      );
      expect(
        isUrlValid('https:efwfwefwe/'),
        isFalse,
        reason: 'its not valid protocol',
      );
      expect(
        isUrlValid('HTTPS://google.com/'),
        isFalse,
        reason: 'its not valid protocol it should start with all smal cases',
      );
      expect(
        isUrlValid('https//efwfwefwe/'),
        isFalse,
        reason: 'its not valid domain',
      );
      expect(
        isUrlValid('http//efwfwefwe'),
        isFalse,
        reason: 'its not valid domain',
      );
    });
  });

  group('test for youtube url', () {
    test(
      'valid cases for youtube url',
      () {
        expect(
          isYoutubeUrLValid('http://www.youtube.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isYoutubeUrLValid('http://youtube.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isYoutubeUrLValid('https://youtube.com'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isYoutubeUrLValid('https://youtube.com/'),
          isTrue,
          reason: 'valid protocol, vlid domain',
        );
        expect(
          isYoutubeUrLValid(
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
          isYoutubeUrLValid('htt://www.youtube.com'),
          isFalse,
          reason: 'vot valid protocol',
        );
        expect(
          isYoutubeUrLValid('http://youtube.net'),
          isFalse,
          reason: 'not vlid domain',
        );
        expect(
          isYoutubeUrLValid('https:/youtube.com'),
          isFalse,
          reason: 'not valid protocol',
        );
        expect(
          isYoutubeUrLValid('https://instagram.com/'),
          isFalse,
          reason: 'not a youtube domain',
        );
        expect(
          isYoutubeUrLValid(''),
          isFalse,
          reason: 'empty url',
        );
      },
    );
  });
}
