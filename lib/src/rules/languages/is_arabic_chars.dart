// TODO(Rule) :: isArabic Chars
import 'package:queen_validators/queen_validators.dart';

bool isArabicChars(String input) => containsAny(
      input,
      [
        'ا',
        'ب',
        'ت',
        'ث',
        'ج',
        'ح',
        'خ',
        'د',
        'ز',
        'ر',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      ],
    );
