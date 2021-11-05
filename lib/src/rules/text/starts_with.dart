import '../../../queen_validators.dart';

class StartsWith extends TextValidationRule {
  final Pattern pattren;
  StartsWith(this.pattren, [String? msg]) : super(msg);

  @override
  String get defaultError => 'must_be_empty';

  @override
  bool isValid(String val) => val.trim().startsWith(pattren);
}
