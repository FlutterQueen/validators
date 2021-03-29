import 'package:queen_validators/queen_validators.dart' as q;
import 'package:test/test.dart';

void main(List<String> args) {
  group('is valid hex', () {
    //  '0xFF', '0xFFFF', '0xFFFFF', '0xFF123456'
    const emptyStrings = [
      '0xFFFFFF',
    ];
    for (final v in emptyStrings) {
      test(v, () => expect(q.isHexColor(v), isTrue));
    }
  });
  // group('is not empty string', () {
  //   const notEmptyStrings = [' a ', ' b', '  c    ', '   d          e', '    f           h'];
  //   for (final v in notEmptyStrings) {
  //     test(v, () => expect(q.isEmpty(v), isFalse));
  //   }
  // });
}
