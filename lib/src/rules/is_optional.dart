import 'package:queen_validators/src/imp/validation.dart';

/// allows you to skip the errors if the input is null
/// * if the input is null and fails any role
/// * with instance of this class the qValidator will ignore the field rule
class IsOptional extends TextValidationRule {
  IsOptional();

  @override
  String get defaultError => '';

  @override
  bool isValid(val) => true;
}
