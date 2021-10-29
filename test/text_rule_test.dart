import 'package:queen_validators/queen_validators.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

class TestRule extends TextValidationRule {
  TestRule({String? msg}) : super(msg);
  @override
  String get defaultError => 'the_message';

  @override
  bool isValid(String val) => val.isNotEmpty;
}

void main() {
  group(
    'TextValidationRule base rule',
    () {
      test(
        'if is valid return null',
        () {
          final testRule = TestRule();
          expect(testRule.run('v'), equals(null));
        },
      );
      test(
        'if is not valid return the message',
        () {
          final testRule = TestRule();
          expect(testRule.run(''), equals('the_message'));
        },
      );
      test(
        'can override the error message from the constractor',
        () {
          final testRule = TestRule(msg: 'foo');
          expect(testRule.run(''), equals('foo'));
        },
      );
    },
  );
}
