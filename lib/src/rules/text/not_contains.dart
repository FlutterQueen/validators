import '../../../queen_validators.dart';

/// checks if input does not contain the provided value;

class NotContains extends TextValidationRule {
  final String value;

  NotContains(this.value, [String? error]) : super(error);

  @override
  bool isValid(String input) => !input.trim().contains(value);

  @override
  String toString() => 'validation.not_contains';
}
