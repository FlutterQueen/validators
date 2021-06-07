import 'package:queen_validators/src/functions/is_port.dart';
import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `port`
class IsPort extends TextValidationRule {
  const IsPort([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not valid port number';

  @override
  bool isValid(String val) => isPort(val);
}
