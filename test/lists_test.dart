import 'package:queen_validators/lits.dart';
import 'package:test/test.dart' hide isIn;

void main() {
  group('containsAny Function', () {
    const list = <String>['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'q'];

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

  group('IsIn Function', () {
    const stringsList = <String>[
      'foo',
      'bar',
      'zee',
      'queen',
      'validators',
      'palace',
      'dart',
      'flutter'
    ];
    test('it returns true if is in the list', () {
      expect(isIn('foo', stringsList), isTrue);
      expect(isIn('bar', stringsList), isTrue);
      expect(isIn('queen', stringsList), isTrue);
      expect(isIn('dart', stringsList), isTrue);
      expect(isIn('flutter', stringsList), isTrue);
    });
    test('it returns false if is in the list', () {
      expect(isIn('1foo', stringsList), isFalse);
      expect(isIn('3bar', stringsList), isFalse);
      expect(isIn('4queen', stringsList), isFalse);
      expect(isIn('5dart', stringsList), isFalse);
      expect(isIn('6flutter', stringsList), isFalse);
    });
  });

  group('isNotIn Function', () {
    const stringsList = <String>[
      'foo',
      'bar',
      'zee',
      'queen',
      'validators',
      'palace',
      'dart',
      'flutter'
    ];
    test('it returns true if is in the list', () {
      expect(isNotIn('foo', stringsList), isFalse);
      expect(isNotIn('bar', stringsList), isFalse);
      expect(isNotIn('queen', stringsList), isFalse);
      expect(isNotIn('dart', stringsList), isFalse);
      expect(isNotIn('flutter', stringsList), isFalse);
    });
    test('it returns false if is in the list', () {
      expect(isNotIn('1foo', stringsList), isTrue);
      expect(isNotIn('3bar', stringsList), isTrue);
      expect(isNotIn('4queen', stringsList), isTrue);
      expect(isNotIn('5dart', stringsList), isTrue);
      expect(isNotIn('6flutter', stringsList), isTrue);
    });
  });

  group('Not Contains Any (Function)', () {
    final List<String> value = [
      'go',
      'nice',
      'shit',
      'facebook',
      'git',
      'cubit',
      'flutter',
    ];

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
