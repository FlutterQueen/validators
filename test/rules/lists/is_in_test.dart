import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart' hide isIn;

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
  group('IsIn Rule', () {
    test(
      'it returns true if is in the list',
      () {
        expect(IsIn(stringsList).isValid('foo'), isTrue);
        expect(IsIn(stringsList).isValid('bar'), isTrue);
        expect(IsIn(stringsList).isValid('queen'), isTrue);
        expect(IsIn(stringsList).isValid('dart'), isTrue);
        expect(IsIn(stringsList).isValid('flutter'), isTrue);
      },
    );
    test('it returns false if is in the list', () {
      expect(IsIn(stringsList).isValid('fooOO'), isFalse);
      expect(IsIn(stringsList).isValid('barLL'), isFalse);
      expect(IsIn(stringsList).isValid('queenL'), isFalse);
      expect(IsIn(stringsList).isValid('dDaRt'), isFalse);
      expect(IsIn(stringsList).isValid('Flutter'), isFalse);
    });
  });
  group('IsIn Function', () {
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
}
