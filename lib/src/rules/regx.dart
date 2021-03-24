import 'package:queen_validators/src/imp/validation.dart';

/// allow using a regular expression as validation rule
class RegExpRule extends QueenValidationRule {
  final RegExp regX;
  const RegExpRule(this.regX, {String? msg}) : super(msg);

  @override
  String get errorMsg => 'did not match';

  @override
  bool validate(dynamic val) => regX.hasMatch(val.toString());
}
