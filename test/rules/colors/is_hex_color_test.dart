import 'package:queen_validators/src/rules/colors/is_hex_color.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  const validColors = <String>[
    '#FFFFFF', // starts with #  and does not have opacity
    'FFFFFF', // does not starts with #
    // '#FFFFFFFF', // have opacity
    '#FFF'
  ];

  const notValidColors = <String>[
    '#FF', // too short
    '#FFFFF-', // un expected characyers
    '', //empty
    '#',
  ];
  group(
    'isHexColor function',
    () {
      test(
        'returns true if is valid color',
        () {
          for (final color in validColors) {
            expect(isHexColor(color), isTrue);
          }
        },
      );
      test(
        'returns false if is not valid color',
        () {
          for (final color in notValidColors) {
            expect(isHexColor(color), isFalse);
          }
        },
      );
      test(
        'can start with # or not ',
        () => expect(isHexColor('#FFFFFF') && isHexColor('FFFFFF'), isTrue),
      );

      // TODO :: suuport color opacity
      // test(
      //   'support obacity',
      //   () => expect(isHexColor('#FFFFFFFF'), isTrue),
      // );
    },
  );

  group('IsHexColor', () {
    test('return true if is valid color', () {});
  });
}
