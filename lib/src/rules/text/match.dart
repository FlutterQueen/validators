import '../../../queen_validators.dart';

/// checks if the input is match other string
class Match extends TextValidationRule {
  final String other;
  final bool caseSensitive;

  Match(
    this.other, {
    this.caseSensitive = true,
    String? error,
  }) : super(error);

  @override
  bool isValid(String input) => caseSensitive
      ? match(input, other)
      : match(input.toLowerCase(), other.toLowerCase());

  @override
  String toString() => 'validation.should_match';
}

/// checks if two `Strings` are the same
bool match(
  Object? input,
  Object? other,
) =>
    input != null &&
        other != null &&
        input.runtimeType == other.runtimeType &&
        identical(input, other) ||
    input == other;
