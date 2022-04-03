import '../../../queen_validators.dart';

class IsBool extends TextValidationRule {
  const IsBool([String? error]) : super(error);

  @override
  bool isValid(String input) => isBool(input);
  @override
  String toString() => 'validation.is_not_bool';
}

bool isBool(Object? input) {
  return [
    'true',
    'false',
    true,
    false,
  ].any((e) {
    if (e is String && input is String) {
      return e.compareTo(input.trim().toLowerCase()) == 0;
    } else {
      return e == input;
    }
  });
}
