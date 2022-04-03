import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  group(
    'IsOptional rule ',
    () {
      test('always pass', () => expect(IsOptional().isValid(''), isTrue));
      test(
        'cant show error ',
        () => expect(
          () => IsOptional().localizedError,
          throwsA(isA<Exception>()),
        ),
      );
    },
  );
}
