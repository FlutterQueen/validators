import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  test('validation rule', () {
    final validator = qValidator([IsRequired()]);
    final msg = validator('');
    expect(msg, equals('required'));
  });

  test('validation rule when false does not apply the rule', () {
    final validator = qValidator(
      [
        IsRequired().when(() => false),
      ],
    );
    final msg = validator('');
    expect(msg, equals(null));
  });

  test('validation rule when false does not apply the rule && any other rule works fine', () {
    final validator = qValidator(
      [
        IsRequired().when(() => false),
        MinLength(5),
      ],
    );
    final msg = validator('');
    expect(msg, equals('min length is 5'));
  });
}
