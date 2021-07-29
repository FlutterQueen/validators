import 'package:queen_validators/src/imp/validation.dart';

/// allow using a regular expression as validation rule
class RegExpRule extends TextValidationRule {
  final RegExp regX;
  RegExpRule(this.regX, [String? msg]) : super(msg);

  @override
  String get defaultError => 'did not match';

  @override
  bool isValid(String val) => regX.hasMatch(val);
}
