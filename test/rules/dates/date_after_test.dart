import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  group('isDateAfter Func', () {
    test('it returns false if the input is null', () {
      final result = isDateAfter(null, DateTime.now());
      expect(result, isFalse);
    });
    test('test', () {
      final result = IsDateAfter(DateTime.now()).isValid('');
      expect(result, isFalse);
    });
    test(
      'it returns false if the input Empty',
      () => expect(
        isDateAfter('', DateTime.now()),
        isFalse,
        reason: 'empty strings arent valid dates ',
      ),
    );
    test('it returns false if the date is not after the current date', () {
      expect(
        isDateAfter(
          DateTime.now(),
          DateTime.now().add(
            const Duration(days: 1),
          ),
        ),
        isFalse,
      );
    });
    test('it returns false if the date is equal current date', () {
      expect(
        isDateAfter(
          DateTime.now(),
          DateTime.now(),
        ),
        isFalse,
      );
    });
    test('it returns false if the input int', () {
      expect(
        isDateAfter(
          23,
          DateTime.now(),
        ),
        isFalse,
      );
    });
    test('it returns true if the input after the current Date', () {
      expect(
        isDateAfter(
          DateTime.now().add(
            const Duration(days: 1),
          ),
          DateTime.now(),
        ),
        isTrue,
      );
    });
  });
}
