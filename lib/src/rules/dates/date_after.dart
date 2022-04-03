import '../../../queen_validators.dart';

class IsDateAfter extends TextValidationRule {
  final DateTime date;

  IsDateAfter(this.date, [String? error]) : super(error);

  @override
  bool isValid(String input) => isDateAfter(input, date);

  @override
  String toString() => 'must be after $date';
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
