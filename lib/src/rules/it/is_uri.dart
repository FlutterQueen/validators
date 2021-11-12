import 'package:queen_validators/queen_validators.dart';

class IsUri extends TextValidationRule {
  IsUri([String? msg]) : super(msg);
  @override
  String get defaultError => 'Invalid URI';

  @override
  bool isValid(String input) => isUri(input);
}

bool isUri(String uri) {
  return Uri.tryParse(uri) != null;
}