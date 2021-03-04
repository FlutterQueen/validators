import 'package:queen_validators/src/imp/validation.dart';

/// allow using a regular expreesion as validation rule
class RegExpRule extends QueenValidationRule {
  final RegExp regX;
  RegExpRule(this.regX, {String? msg}) : super(msg);

  @override
  String get errorMsg => 'did not match';

  @override
  bool validate(String val) => regX.hasMatch(val);
}
