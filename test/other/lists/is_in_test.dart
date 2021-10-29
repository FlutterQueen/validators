import 'package:test/test.dart';
import 'package:queen_validators/queen_validators.dart' as q;

void main() {
  group('is in List<String>', () {
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
      test(v, () => expect(q.isIn(v, stringsList), isTrue));
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
      test(v, () => expect(q.isIn(v, stringsList), isFalse));
    }
  });
  group('is in List<int>', () {
    const list = <int>[10, 20, 33, 44, 55, 66, 77, 88, 99];
    final validList = [...list];
    for (final v in validList) {
      test(v, () => expect(q.isIn(v, list), isTrue));
    }
    const notValidList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];
    for (final v in notValidList) {
      test(v, () => expect(q.isIn(v, list), isFalse));
    }
  });
}
