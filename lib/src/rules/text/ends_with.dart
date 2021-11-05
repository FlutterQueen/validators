import '../../../queen_validators.dart';

class EndsWith extends TextValidationRule {
  final String end;
  EndsWith(this.end, [String? msg]) : super(msg);

  @override
  String get defaultError => 'must_end_with $end';

  @override
  bool isValid(String val) => val.trim().endsWith(end);
}
