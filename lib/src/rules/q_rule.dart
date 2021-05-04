import 'package:queen_validators/queen_validators.dart';

class QValidationRule extends TextValidationRule {
  final String? Function(String? value) validationMethod;
  QValidationRule(this.validationMethod);
  @override
  String get defaultError => 'not valid';

  @override
  bool isValid(String val) => false;

  @override
  String? run(String? val) => validationMethod(val);
}
