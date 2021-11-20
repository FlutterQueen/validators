import 'package:queen_validators/queen_validators.dart';

import 'package:test/test.dart';

void main() {
  group('IsNumber Rule', () {
    //
    test('return true if is valid number', () {
      expect(IsNumber().isValid('0'), isTrue);
      expect(IsNumber().isValid('01'), isTrue);
      expect(IsNumber().isValid('123'), isTrue);
      expect(IsNumber().isValid('-123'), isTrue);
      expect(IsNumber().isValid('-0'), isTrue);
      expect(IsNumber().isValid('50.5'), isTrue);
      expect(IsNumber().isValid('0.5'), isTrue);
      expect(IsNumber().isValid('.5'), isTrue);
      expect(IsNumber().isValid('1.0'), isTrue);
      expect(IsNumber().isValid('0.0'), isTrue);
    });
    test('return false if is valid number', () {
      expect(IsNumber().isValid('a0'), isFalse);
      expect(IsNumber().isValid('O12'), isFalse);
      expect(IsNumber().isValid('50s'), isFalse);
      expect(IsNumber().isValid('  '), isFalse);
      expect(IsNumber().isValid(''), isFalse);
      expect(IsNumber().isValid('AWS'), isFalse);
    });

    //
  });
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
}
