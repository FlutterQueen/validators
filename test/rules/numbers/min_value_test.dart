import 'package:queen_validators/queen_validators.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('MinValue Rule', () {
    test('it returns true if is above the max value', () {
      expect(MinValue(48).isValid('49'), isTrue);
    });
    test('it returns true if is == to the min value', () {
      expect(MinValue(4).isValid('4'), isTrue);
    });
    test('it returns false if is not valid number ', () {
      expect(MinValue(4).isValid('4x'), isFalse);
    });
  });
  group('minValue Function', () {
    test(
      'it return false if is null',
      () => expect(minValue(null, 1), isFalse),
    );
    test(
      'it support strings',
      () => expect(minValue('5', 4), isTrue),
    );
    test(
      'it support doubles',
      () => expect(minValue('5.5', 5), isTrue),
    );
    test(
      'it return True if is equal to the min value',
      () => expect(minValue(5, 5), isTrue),
    );
    test(
      'it return True if is bigger than the min value',
      () => expect(minValue(10, 5), isTrue),
    );
  });
}
