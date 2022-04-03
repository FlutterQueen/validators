import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

List<String> value = [
  'go',
  'nice',
  'shit',
  'facebook',
  'git',
  'cubit',
  'flutter',
];

void main() {
  group('Not Contains Any (Rule)', () {
    test('Return true if list not contains String ', () {
      expect(NotContainsAny(value).isValid('hazem'), isTrue);
      expect(NotContainsAny(value).isValid('ahmed'), isTrue);
      expect(NotContainsAny(value).isValid('ali'), isTrue);
      expect(NotContainsAny(value).isValid('twitter'), isTrue);
      expect(NotContainsAny(value).isValid('yahoo'), isTrue);
      expect(NotContainsAny(value).isValid('messenger'), isTrue);
      expect(NotContainsAny(value).isValid('hell'), isTrue);
    });
    test('Return false if list contains String ', () {
      expect(NotContainsAny(value).isValid('go'), isFalse);
      expect(NotContainsAny(value).isValid('nice'), isFalse);
      expect(NotContainsAny(value).isValid('shit'), isFalse);
      expect(NotContainsAny(value).isValid('facebook'), isFalse);
      expect(NotContainsAny(value).isValid('git'), isFalse);
      expect(NotContainsAny(value).isValid('cubit'), isFalse);
      expect(NotContainsAny(value).isValid('flutter'), isFalse);
    });
  });
  group('Not Contains Any (Function)', () {
    test('Return true if list not contains String ', () {
      expect(notContainsAny('hazem', value), isTrue);
      expect(notContainsAny('ahmed', value), isTrue);
      expect(notContainsAny('ali', value), isTrue);
      expect(notContainsAny('twitter', value), isTrue);
      expect(notContainsAny('yahoo', value), isTrue);
      expect(notContainsAny('messenger', value), isTrue);
      expect(notContainsAny('hell', value), isTrue);
    });
    test('Return false if list contains String ', () {
      expect(notContainsAny('go', value), isFalse);
      expect(notContainsAny('nice', value), isFalse);
      expect(notContainsAny('shit', value), isFalse);
      expect(notContainsAny('facebook', value), isFalse);
      expect(notContainsAny('git', value), isFalse);
      expect(notContainsAny('cubit', value), isFalse);
      expect(notContainsAny('flutter', value), isFalse);
    });
  });
}
