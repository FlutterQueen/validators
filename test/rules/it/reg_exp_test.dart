import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  group('RegExpRule ', () {
    test('it returns true if is a match', () {
      expect(RegExpRule(RegExp('')).isValid('input'), isTrue);
      expect(RegExpRule(RegExp('')).isValid('input'), isTrue);
    });
  });
}
