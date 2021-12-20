import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  const validBooleanFormat = [
    'true',
    'false',
    'True',
    'False',
    'TrUe',
    'FaLse ',
    true,
    false,
  ];
  const notValidBooleanFormat = ['truee', 'falsee', 'Tr0e', 't', 'f'];

  group('is valid boolean', () {
    for (final v in validBooleanFormat) {
      test(v, () => expect(const IsBool().isValid(v.toString()), isTrue));
    }
  });
  group('is not valid boolean format', () {
    for (final v in notValidBooleanFormat) {
      test(v, () => expect(const IsBool().isValid(v), isFalse));
    }
  });
  group('is valid boolean', () {
    const validBooleanFormat = [
      'true',
      'false',
      'True',
      'False',
      'TrUe',
      'FaLse ',
      true,
      false,
    ];
    for (final v in validBooleanFormat) {
      test(v, () => expect(isBool(v), isTrue));
    }
  });
  group('is not valid boolean format', () {
    for (final v in notValidBooleanFormat) {
      test(v, () => expect(isBool(v), isFalse));
    }
  });
}
