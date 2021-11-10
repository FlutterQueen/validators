import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input is match other string
class Match extends TextValidationRule {
  final String other;
  final bool caseSensitve;
  Match(
    this.other, {
    this.caseSensitve = true,
    String? msg,
  }) : super(msg);

  @override
  String get defaultError => 'does not match';

  @override
  bool isValid(String input) => caseSensitve
      ? match(input, other)
      : match(input.toLowerCase(), other.toLowerCase());
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
