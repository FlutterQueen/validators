import 'package:test/test.dart';
import 'package:queen_validators/queen_validators.dart' as q;

void main() {
  const list = ['foo', 122, 'zee', 459, 'validators', false, 'dart', 'عنبة', 'flutter'];

  group('match [valid]', () {
    const validList = ['foo', 122, 'zee', 459, 'validators', false, 'dart', 'عنبة', 'flutter'];
    for (var i = 0; i < list.length; i++) {
      test(list[i], () => expect(q.match(list[i], validList[i]), isTrue));
    }
  });
  group('match [notValid]', () {
    const notValid = ['f0oo', 1232, 'zeez', 4159, 'validatorsa', true, 'Flutter', 'دوبل زوكش', 'dart'];
    for (var i = 0; i < list.length; i++) {
      test(list[i], () => expect(q.match(list[i], notValid[i]), isFalse));
    }
  });
}
