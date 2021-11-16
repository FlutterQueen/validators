import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  group('RegExpRule ', () {
    test('it returns true if is a match', () {
      expect(RegExpRule(RegExp('')).isValid('input'), isTrue);
      expect(RegExpRule(RegExp('')).isValid('input'), isTrue);
    });
  });
}
