import 'package:queen_validators/src/imp/validation.dart';

/// allows you to skip the errors if the input is null
/// * if the input is null and fails any role
/// * with instance of this class the qValidator will ignore the field rule
class IsOptional extends QueenValidationRule {
  const IsOptional() : super(null);

  @override
  String? get errorMsg => null;

  @override
  bool validate(dynamic val) => true;
}
