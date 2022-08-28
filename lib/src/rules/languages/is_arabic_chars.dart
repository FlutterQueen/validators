import '../../../queen_validators.dart';

class IsArabicChars extends TextValidationRule {
  IsArabicChars([String? error]) : super(error);

  @override
  bool isValid(String input) => isArabicChars(input);

  @override
  String toString() => 'validation.is_arabic_chars';
}

bool isArabicChars(String input) =>
    RegExp(r'^[\u0621-\u064A\s\p{N}]+$').hasMatch(input);
