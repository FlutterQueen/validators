import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

class StartsWith extends TextValidationRule {
  final Pattern pattern;

  StartsWith(this.pattern, [String? error]) : super(error);

  @override
  bool isValid(String input) => input.trim().startsWith(pattern);
  @override
  String get localizedError =>
      "validation.starts_with".args({"value": pattern.toString()});
}
