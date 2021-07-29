import 'package:queen_validators/src/functions/is_port.dart';
import 'package:test/test.dart';

const _validPorts = <String>[
  '8080',
  '6060',
  '3030',
  '80',
  '81',
];

const _notValidPorts = <String>[
  'a8080',
  '6 060',
  '',
  '2O2O',
  '#2020',
];

void main() {
  for (final port in _validPorts) {
    test(
      'valid ports',
      () {
        expect(isPort(port), isTrue);
      },
    );
  }
  for (final port in _notValidPorts) {
    test(
      'valid ports',
      () {
        expect(isPort(port), isFalse);
      },
    );
  }
}
