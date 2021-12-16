import 'package:queen_validators/src/rules/colors/is_hex_color.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  const notValidColors = <String>[
    '#FF', // too short
    '#FFFFF-', // un expected characters
    '', //empty
    '#',
  ];
  group(
    'isHexColor function',
    () {
      test('it returns false if input is null', () {
        expect(
          isHexColor(null),
          isFalse,
          reason: 'null is not a valid color',
        );
      });
      test(
        'returns true if is valid color',
        () {
          expect(
            isHexColor('#FFFFFF'),
            isTrue,
            reason: '#FFFFFF is a valid color',
          );
          expect(
            isHexColor('FFF'),
            isTrue,
            reason: '#FFFFFF is a valid color',
          );
          expect(
            isHexColor('#FFF'),
            isTrue,
            reason: '#FFFFFF is a valid color',
          );
          expect(
            isHexColor('FFFFFF'),
            isTrue,
            reason: '# is not required to be a valid color',
          );
          expect(
            isHexColor('FFFFFFFF'),
            isTrue,
            reason: 'can support opacity',
          );
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

      test(
        'support opacity',
        () => expect(isHexColor('#990000FF'), isTrue),
      );
    },
  );

  group('IsHexColor Rule', () {
    test('return true if is valid color', () {
      const rule = IsHexColor();
      expect(rule.isValid('#FFFFFF'), isTrue);
      expect(rule.isValid('#FFF'), isTrue);
      expect(rule.isValid('FFF'), isTrue);
      expect(rule.isValid('FFFFFF'), isTrue);
      expect(rule.isValid('FFFFFFFF'), isTrue);
    });
    test('return false if is valid color', () {
      const rule = IsHexColor();

      expect(rule.isValid(''), isFalse);
    });
  });
}
