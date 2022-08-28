

import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/src/rules/languages/is_number_only.dart';

void main() {
  test("it return true if input is numbers only", (){
    final result = IsNumbersOnly().isValid("1238547");
    expect(result, isTrue);
  });
  test("it return false if input has any symbols ", (){
    final result = IsNumbersOnly().isValid("@*#&");
    expect(result, isFalse);
  });

}
