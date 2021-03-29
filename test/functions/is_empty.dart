import 'package:queen_validators/queen_validators.dart' as q;
import 'package:test/test.dart';

void main(List<String> args) {
  group('is empty String', () {
    const emptyStrings = [' ', '  ', '  ', '   ', '    '];

    for (final v in emptyStrings) {
      test(v, () => expect(q.isEmpty(v), isTrue));
    }
  });
  group('is not empty string', () {
    const notEmptyStrings = [' a ', ' b', '  c    ', '   d          e', '    f           h'];
    for (final v in notEmptyStrings) {
      test(v, () => expect(q.isEmpty(v), isFalse));
    }
  });
}
