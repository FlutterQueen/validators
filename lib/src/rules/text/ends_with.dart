import '../../../queen_validators.dart';

class EndsWith extends TextValidationRule {
  final String end;
  EndsWith(this.end, [String? msg]) : super(msg ?? 'must_end_with $end');

  @override
  bool isValid(String input) => input.trim().endsWith(end);
}
