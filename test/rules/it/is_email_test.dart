import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  group('isEmail ()', () {
    test('it returns false if input is null', () {
      expect(isEmail(null), isFalse);
    });
  });
}
