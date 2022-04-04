import '../../../queen_validators.dart';
import '../../text_rule_class.dart';

/// allows you to skip the errors if the input is null
/// * if the input is null and fails any role
/// * with instance of this class the qValidator will ignore the field rule
class IsOptional extends TextValidationRule {
  IsOptional([String? error]) : super(error);

  @override
  bool isValid(String input) => true;

  @override
  String toString() => throw Exception('this rules can not show errors');
}
