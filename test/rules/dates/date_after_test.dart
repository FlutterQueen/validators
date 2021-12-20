import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

void main() {
  group("isDateAfter Func", () {
    test("it returns false if the input is null", () {
      final result = isDateAfter(null, DateTime.now());
      expect(result, isFalse);
    });
    test(
      "it returns false if the input Empty",
      () => expect(
        isDateAfter('', DateTime.now()),
        isFalse,
        reason: 'empty strings arent valid dates ',
      ),
    );
    test("it returns true if the input after the current Date", () {
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
