import 'package:queen_validators/queen_validators.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'IsOptional rule ',
    () {
      test('always pass', () => expect(IsOptional().isValid(''), isTrue));
    },
  );
}
