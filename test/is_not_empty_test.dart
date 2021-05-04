import 'package:queen_validators/queen_validators.dart' as q;
import 'package:test/test.dart';

void main() {
  group('is  not empty String', () {
    const notEmptyStrings = [' a ', ' b', '  c    ', '   d          e', '    f           h'];

    for (final v in notEmptyStrings) {
      test(v, () => expect(q.isNotEmpty(v), isTrue));
    }
  });
  group('is empty string', () {
    const emptyStrings = [' ', '  ', '  ', '   ', '    '];

    for (final v in emptyStrings) {
      test(v, () => expect(q.isNotEmpty(v), isFalse));
    }
  });
}
