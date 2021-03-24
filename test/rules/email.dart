import 'package:queen_validators/src/functions/is_email.dart';
import 'package:test/test.dart';

void main() {
  final validEmails = <String>[
    'username@dmain.xxxx',
    'userNameWithNumbers132231@domain.com',
  ];
  final notValidEmails = <String>[
    'userEmailWithoutAtSign.com',
    'userEmail@WithoutValidDomaincom',
    '@WithoutUserName.com',
  ];
  group('email validation', () {
    for (final email in validEmails) {
      test('valid email', () => expect(isEmail(email), true));
    }
    for (final email in notValidEmails) {
      test('not valid email', () => expect(isEmail(email), false));
    }
  });
}
