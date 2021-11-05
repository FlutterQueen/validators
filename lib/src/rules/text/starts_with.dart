import '../../../queen_validators.dart';

class StartsWith extends TextValidationRule {
  final Pattern pattren;
  StartsWith(this.pattren, [String? msg]) : super(msg);

  @override
  String get defaultError => 'must_start_with $pattren';

  @override
  bool isValid(String val) => val.trim().startsWith(pattren);
}
