import 'package:queen_validators/queen_validators.dart';

class QRule extends TextValidationRule {
  final String? Function(String? value) validationMethod;
  QRule(this.validationMethod);
  @override
  String get defaultError => 'not valid';

  @override
  bool isValid(String val) => false;

  @override
  String? run(String? v) => validationMethod(v);
}
