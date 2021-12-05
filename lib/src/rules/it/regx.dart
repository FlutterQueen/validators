import 'package:queen_validators/src/text_rule_class.dart';

/// allow using a regular expression as validation rule
class RegExpRule extends TextValidationRule {
  final RegExp regX;
  const RegExpRule(this.regX);

  @override
  bool isValid(String input) => regX.hasMatch(input);
  @override
  String get error => throw UnimplementedError();
}
