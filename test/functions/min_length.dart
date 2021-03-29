import 'package:test/test.dart';
import 'package:queen_validators/queen_validators.dart' as q;

void main() {
  group('max length [valid]', () {
    const keywordsWith6Length = [
      'Queen Validators     ',
      '     Flutter Egypt',
      'تحيا   مصر ',
      'احفاد كيمت',
    ];
    for (final keyword in keywordsWith6Length) {
      test(keyword, () => expect(q.minLength(keyword, 6), isTrue));
    }
  });
  group('max length [Not valid]', () {
    const keywordsWith6Length = [
      'Queen ',
      'valid ',
      '  dart  ',
      'تحيا   ',
      'مصر   ',
    ];
    for (final keyword in keywordsWith6Length) {
      test(keyword, () => expect(q.minLength(keyword, 6), isFalse));
    }
  });
}
