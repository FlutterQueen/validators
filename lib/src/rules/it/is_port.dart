import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input is a valid `port`
class IsPort extends TextValidationRule {
  IsPort([String msg = 'is not valid port number']) : super(msg);

  @override
  bool isValid(String input) => isPort(input);
}

// returns true if the input is valid port number
bool isPort(Object? input) {
  num? _port;
  if (input is String) {
    _port = num.tryParse(input);
  } else if (input is num) {
    _port = input;
  }
  if (_port != null && _port.toInt() < _port) {
    /// has a fraction
    return false;
  }

  return _port != null && 0 <= _port && _port <= 65535;
}
