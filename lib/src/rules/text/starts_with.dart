import '../../../queen_validators.dart';

class StartsWith extends TextValidationRule {
  final Pattern pattern;

  StartsWith(this.pattern, [String? error]) : super(error);

  @override
  bool isValid(String input) => input.trim().startsWith(pattern);

  @override
  String toString() => 'validation.starts_with';
}
