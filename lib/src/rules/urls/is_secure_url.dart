import '../../../queen_validators.dart';

/// checks if the input is a secure `url`
class IsSecureUrl extends TextValidationRule {
  const IsSecureUrl([String? error]) : super(error);

  @override
  bool isValid(String input) => isSecureUrl(input);

  @override
  String toString() => 'validation.is_not_secure_url';
}

// returns true if the input is valid port number
bool isSecureUrl(Object? input) {
  String? url;
  if (input == null) {
    return false;
  } else if (input is String) {
    url = input.toLowerCase();
  }
  return url?.startsWith('https://') ?? false;
}
