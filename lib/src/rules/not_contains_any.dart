import 'package:queen_validators/src/imp/validation.dart';

/// check if the value does not contain any item from the provided list

class NotContainsAny extends TextValidationRule {
  final List<String> value;

  const NotContainsAny(this.value, [String? msg]) : super(msg);

  @override
  String get defaultError => 'must contain at least one of the whitelisted keywords';

  @override
  bool isValid(String val) {
    return value.where((element) => val.trim().contains(element)).isEmpty;
  }
}
