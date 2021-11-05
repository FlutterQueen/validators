import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input is a valid `port`
class IsPort extends TextValidationRule {
  IsPort([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not valid port number';

  @override
  bool isValid(String val) => isPort(val);
}

bool isPort(String port) {
  final _port = int.tryParse(port);
  return _port != null && _port >= 0 && _port < 65535;
}
