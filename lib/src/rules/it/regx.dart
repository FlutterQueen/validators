import '../../../queen_validators.dart';

/// allow using a regular expression as validation rule
class RegExpRule extends TextValidationRule {
  final RegExp regX;
  const RegExpRule(this.regX, [String? error]) : super(error);

  @override
  bool isValid(String input) => regX.hasMatch(input);
  @override
  String toString() => 'validation.is_not_valid';
}
