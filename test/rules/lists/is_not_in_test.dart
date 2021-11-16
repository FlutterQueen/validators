import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
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
  group('IsNotIn Rule', () {
    test(
      'it returns true if is in the list',
      () {
        expect(IsNotIn(stringsList).isValid('foo'), isFalse);
        expect(IsNotIn(stringsList).isValid('bar'), isFalse);
        expect(IsNotIn(stringsList).isValid('queen'), isFalse);
        expect(IsNotIn(stringsList).isValid('dart'), isFalse);
        expect(IsNotIn(stringsList).isValid('flutter'), isFalse);
      },
    );
    test('it returns false if is in the list', () {
      expect(IsNotIn(stringsList).isValid('fooOO'), isTrue);
      expect(IsNotIn(stringsList).isValid('barLL'), isTrue);
      expect(IsNotIn(stringsList).isValid('queenL'), isTrue);
      expect(IsNotIn(stringsList).isValid('dDaRt'), isTrue);
      expect(IsNotIn(stringsList).isValid('Flutter'), isTrue);
    });
  });
  group('isNotIn Function', () {
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
}
