import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  group('qValidator function', () {
    test('stops on first failure', () {
      final msg = qValidator([
        IsRequired(),
        MinLength(500),
      ])('');
      expect(msg, isA<String>());
    });

    test('support optional felids', () {
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
      )('if enter value isOptional will not effect any thing');
      expect(msg2, isA<String>());
    });
    test('returns the first error message', () {
      final msg = qValidator([
        IsRequired("this field is required"),
        MaxLength(1),
      ])('');
      expect(msg, equals("this field is required"));
    });

    test(
      'in case of failure run the onFailureCallback',
      () {
        bool getsCalled = false;

        qValidator(
          [IsOptional(), MaxLength(1)],
          onFail: (input, rules, rule) {
            getsCalled = true;
            expect(input, equals('the-input'));
            expect(rules.first, isA<IsOptional>());
            expect(rules.last, isA<MaxLength>());
            expect(rule, isA<MaxLength>());
          },
        )('the-input');

        expect(getsCalled, isTrue);
      },
    );
  });
}
