import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  test(
    'IsOptional does not have a message',
    () {
      expect(() => IsOptional().toString(), throwsA(isA<Exception>()));
    },
  );
}
