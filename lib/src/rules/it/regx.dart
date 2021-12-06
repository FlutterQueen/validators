import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

/// allow using a regular expression as validation rule
class RegExpRule extends TextValidationRule {
  final RegExp regX;
  const RegExpRule(this.regX);

  @override
  bool isValid(String input) => regX.hasMatch(input);
  @override
  String get error => 'is_not_valid'.tr;
}
