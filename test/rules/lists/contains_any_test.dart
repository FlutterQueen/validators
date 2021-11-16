import 'package:test/test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  const list = <String>['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'q'];
  group('containsAny Function', () {
    test('returns true if string contains any item of the list', () {
      expect(containsAny('HHHH', list), isTrue);
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
