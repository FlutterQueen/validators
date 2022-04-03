import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `port`
class IsPort extends TextValidationRule {
  const IsPort([String? error]) : super(error);

  @override
  bool isValid(String input) => isPort(input);

  @override
  String get localizedError => 'validation.is_not_port'.tr;
}

// returns true if the input is valid port number
bool isPort(Object? input) {
  num? _port;
  if (input is String) {
    _port = num.tryParse(input);
  } else if (input is num) {
    _port = input;
  }
  if (_port != null && _port.toInt() != _port) {
    return false;
  }

  return _port != null && 0 <= _port && _port <= 65535;
}
