import 'package:queen_validators/queen_validators.dart';

import 'package:test/test.dart';

void main() {
  group('is valid boolean', () {
    const validBooleanFormat = [
      'true',
      'false',
      'True',
      'False',
      'TrUe',
      'FaLse ',
      '1',
      '0',
      1,
      0,
      true,
      false,
      1.0,
      0.0
    ];
    for (final v in validBooleanFormat) {
      test(v, () => expect(isBoolean(v), isTrue));
    }
  });
  group('is not valid boolean format', () {
    const notValidBooleanFormat = [
      'truee',
      'falsee',
      'Tr0e',
      20,
      -1,
      1.5,
      .5,
      't',
      'f'
    ];
    for (final v in notValidBooleanFormat) {
      test(v, () => expect(isBoolean(v), isFalse));
    }
  });
}
