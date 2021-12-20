import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart';

class IsDateAfter extends TextValidationRule {
  final DateTime date;

  IsDateAfter(this.date, [String? error]) : super(error);

  @override
  bool isValid(String input) => isDateAfter(input, date);

  @override
  String get localizedError =>
      'validation.is_not_after_date'.args({"date": date.toString()});
}

bool isDateAfter(Object? input, DateTime date) {
  DateTime? _input;
  if (input is String) {
    _input = DateTime.tryParse(input);
  } else if (input is DateTime) {
    _input = input;
  }
  return _input != null && _input.isAfter(date);
}
