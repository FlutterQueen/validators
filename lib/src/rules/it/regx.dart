import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart';

/// allow using a regular expression as validation rule
class RegExpRule extends TextValidationRule {
  final RegExp regX;
  const RegExpRule(this.regX, [String? error]) : super(error);

  @override
  bool isValid(String input) => regX.hasMatch(input);
  @override
  String get localizedError => 'validation.is_not_valid'.tr;
}
