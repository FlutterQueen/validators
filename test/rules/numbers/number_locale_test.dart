import 'package:queen_validators/queen_validators.dart';

import 'package:test/test.dart';

void main() {
  group('IsNumber Rule', () {
    //
    test('return true if is valid number', () {
      expect(IsArabicNum().isValid('4687'), isTrue);
      expect(IsHindiNum().isValid('٤٥٦'), isTrue);
    });

    //
  });
}
