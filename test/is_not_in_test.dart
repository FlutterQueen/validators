import 'package:queen_validators/lits.dart';
import 'package:test/test.dart';

void main() {
  group('is Not in List<String>', () {
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
    final validList = [...stringsList];
    for (final v in validList) {
      test(v, () => expect(isNotIn(v, stringsList), isFalse));
    }
    const notValidList = <String>[
      'foao',
      'baR',
      'zee ',
      'queen  ',
      ' validators ',
      '  palace',
      'dar1t',
      'dart on server'
    ];
    for (final v in notValidList) {
      test(v, () => expect(isNotIn(v, stringsList), isTrue));
    }
  });
  group('is Not in List<int>', () {
    const list = <int>[10, 20, 33, 44, 55, 66, 77, 88, 99];
    final validList = [...list];
    for (final v in validList) {
      test(v, () => expect(isNotIn(v, list), isFalse));
    }
    const notValidList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];
    for (final v in notValidList) {
      test(v, () => expect(isNotIn(v, list), isTrue));
    }
  });
}
