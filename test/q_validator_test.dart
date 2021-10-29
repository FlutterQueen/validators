import 'package:queen_validators/queen_validators.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

class _FailureCalledException implements Exception {}

void main() {
  group('qValidator function', () {
    test('stops on first failure', () {
      final msg = qValidator([
        IsRequired(),
        IsOptional(),
      ])('');
      expect(msg, isA<String>());
    });

    test('support optional feilds', () {
      final msg = qValidator(
        [
          IsOptional(),
          IsRequired(),
        ],
      )('');
      expect(msg, equals(null));

      final msg2 = qValidator(
        [
          IsOptional(),
          MaxLength(1),
        ],
      )('if enter value isOptional will not efeect any thing');
      expect(msg2, isA<String>());
    });
    test('returns the first error message', () {
      final msg = qValidator([
        IsRequired(),
        MaxLength(1),
      ])('');
      expect(msg, equals('required'));
    });

    test(
      'in case of failure run the onFailureCallback',
      () {
        bool getsCalled = false;

        qValidator(
          [IsOptional(), MaxLength(1)],
          (input, rules, rule) {
            getsCalled = true;
            expect(input, equals('the-input'));
            expect(rules.first, isA<IsOptional>());
            expect(rules.last, isA<MaxLength>());
            expect(rule, isA<MaxLength>());
            // throw _FailureCalledException();
          },
        )('the-input');

        expect(getsCalled, isTrue);
      },
    );
  });
}
