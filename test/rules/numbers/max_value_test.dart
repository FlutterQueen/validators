import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  group('MaxValue Rule', () {
    test('it returns true if is under the max value', () {
      expect(MaxValue(50).isValid('49'), isTrue);
    });
    test('it returns true if is == to the max value', () {
      expect(MaxValue(4).isValid('4'), isTrue);
    });
    test('it returns false if is not valid number ', () {
      expect(MaxValue(4).isValid('4x'), isFalse);
    });
  });
  group('maxValue Function', () {
    test(
      'it return false if is null',
      () => expect(maxValue(null, 1), isFalse),
    );
    test(
      'it support strings',
      () => expect(maxValue('5', 10), isTrue),
    );
    test(
      'it support doubles',
      () => expect(maxValue('5.5', 10), isTrue),
    );
    test(
      'it return True if is equal to the max value',
      () => expect(maxValue(5, 5), isTrue),
    );
    test(
      'it return True if is less than the max value',
      () => expect(maxValue(1, 5), isTrue),
    );
  });
}
