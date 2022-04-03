import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';

class TestRule extends TextValidationRule {
  TestRule([String? error]) : super(error);

  @override
  bool isValid(String input) => input.isNotEmpty;
  @override
  String toString() => throw UnimplementedError();
}

void main() {
  group(
    'TextValidationRule base rule',
    () {
      // test(
      //   'if is valid return null',
      //   () {
      //     final testRule = TestRule();
      //     expect(testRule.run('v'), equals(null));
      //   },
      // );
      // test(
      //   'if is not valid return the message',
      //   () {
      //     final testRule = TestRule();
      //     expect(testRule.run(''), equals('the_message'));
      //   },
      // );
      // test(
      //   'can override the error message from the constructor',
      //   () {
      //     final testRule = TestRule(msg: 'foo');
      //     expect(testRule.run(''), equals('foo'));
      //   },
      // );
    },
  );
}
