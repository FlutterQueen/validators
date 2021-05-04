import 'package:test/test.dart';
import 'package:queen_validators/queen_validators.dart' as q;

void main() {
  const list = <String>['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'];
  group('not contains any [Valid] List<String>', () {
    const list = <String>['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'];
    const noValidItems = ['xxx', 'zzz', 'jjjj', 'Nnn', 'qqqq', 'Kllkk', ' m', 'ssss'];
    for (final v in noValidItems) {
      test(v, () => expect(q.notContainsAny(v, list), isTrue));
    }
  });
  group('not contains any [notValid] List<String>', () {
    const validItems = ['arnab', 'bata', 'car', 'ddt', 'eh daaah !', 'fol 3aleeek', 'gamed', 'haaaaaaa7'];
    for (final v in validItems) {
      test(v, () => expect(q.notContainsAny(v, list), isFalse));
    }
  });
}
