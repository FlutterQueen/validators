import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  group('isPort ()', () {
    test('it returns false if input is null', () {
      expect(isPort(null), isFalse);
    });
    test('it support numbers int double num', () {
      expect(isPort(80), isTrue);
      expect(isPort(80.0), isTrue);
    });
    test('it returns true if is port', () {
      expect(isPort('80'), true);
    });
    test('it trims it', () {
      expect(isPort(' 80 '), true);
    });
    test('it return true if is valid port', () {
      expect(isPort(0), isTrue);
      expect(isPort(65535), isTrue);
    });
  });
}
