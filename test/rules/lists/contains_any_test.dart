import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  const list = <String>['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'q'];
  group('containsAny Function', () {
    test('', () {
      expect(containsAny('abc', list, caseSensitive: true), isTrue);
      expect(
        containsAny('abc ', list, trim: false, caseSensitive: true),
        isTrue,
      );
    });
    test('returns true if string contains any item of the list', () {
      expect(
        containsAny(
          'HHHH',
          list,
        ),
        isTrue,
      );
      expect(containsAny('hhh', list), isTrue);
      expect(containsAny('Faded', list), isTrue);
      expect(containsAny('Queen', list), isTrue);
      expect(containsAny('ddt', list), isTrue);
    });
    test('returns false if string does not contains any item of the list', () {
      expect(containsAny('JJJJ', list), isFalse);
      expect(containsAny('kli', list), isFalse);
      expect(containsAny('Row', list), isFalse);
      expect(containsAny('rss', list), isFalse);
      expect(containsAny('json', list), isFalse);
    });

    test('returns true if string contains any item of the list', () {
      expect(containsAny('HHHH', list, trim: false), isTrue);
      expect(containsAny('hhh', list, trim: false), isTrue);
      expect(containsAny('Faded', list, trim: false), isTrue);
      expect(containsAny('Queen', list, trim: false), isTrue);
      expect(containsAny('ddt', list, trim: false), isTrue);
    });
    test('returns false if string does not contains any item of the list', () {
      expect(containsAny('JJJJ', list, trim: false), isFalse);
      expect(containsAny('kli', list, trim: false), isFalse);
      expect(containsAny('Row', list, trim: false), isFalse);
      expect(containsAny('rss', list, trim: false), isFalse);
      expect(containsAny('json', list, trim: false), isFalse);
    });
  });
  group('ContainsAny Rule', () {
    test('returns true if string contains any item of the list', () {
      expect(ContainsAny(list).isValid('HHHH'), isTrue);
      expect(ContainsAny(list).isValid('hhh'), isTrue);
      expect(ContainsAny(list).isValid('Faded'), isTrue);
      expect(ContainsAny(list).isValid('Queen'), isTrue);
      expect(ContainsAny(list).isValid('ddt'), isTrue);
    });
    test('returns false if string does not contains any item of the list', () {
      expect(ContainsAny(list).isValid('JJJJ'), isFalse);
      expect(ContainsAny(list).isValid('kli'), isFalse);
      expect(ContainsAny(list).isValid('Row'), isFalse);
      expect(ContainsAny(list).isValid('rss'), isFalse);
      expect(ContainsAny(list).isValid('json'), isFalse);
    });
  });
}
