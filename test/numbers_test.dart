import 'package:queen_validators/numbers.dart';
import 'package:test/test.dart';

void main() {
  test('is valid number', () {
    expect(isNumber('0'), isTrue);
    expect(isNumber('01'), isTrue);
    expect(isNumber('123'), isTrue);
    expect(isNumber('-123'), isTrue);
    expect(isNumber('-0'), isTrue);
    expect(isNumber('50.5'), isTrue);
    expect(isNumber('0.5'), isTrue);
    expect(isNumber('.5'), isTrue);
    expect(isNumber('1.0'), isTrue);
    expect(isNumber('0.0'), isTrue);
  });
  test('is not valid number', () {
    expect(isNumber('a0'), isFalse);
    expect(isNumber('O12'), isFalse);
    expect(isNumber('50s'), isFalse);
    expect(isNumber('  '), isFalse);
    expect(isNumber(''), isFalse);
    expect(isNumber('AWS'), isFalse);
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
