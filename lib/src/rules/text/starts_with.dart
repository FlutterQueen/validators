import '../../../queen_validators.dart';

class StartsWith extends TextValidationRule {
  final Pattern pattern;

  StartsWith(this.pattern, [String? msg])
      : super(msg ?? 'must_start_with $pattern');

  @override
  bool isValid(String input) => input.trim().startsWith(pattern);
}
