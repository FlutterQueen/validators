import 'package:email_validator/email_validator.dart';

bool isBool(Object? input) {
  return [
    'true',
    'false',
    true,
    false,
  ].any((e) {
    if (e is String && input is String) {
      return e.compareTo(input.trim().toLowerCase()) == 0;
    } else {
      return e == input;
    }
  });
}

/// checks if the value can be well formatted email address
bool isEmail(String? email) => EmailValidator.validate(email ?? '');

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
