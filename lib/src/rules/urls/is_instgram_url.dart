import '../../../queen_validators.dart';

class IsInstagramUrl extends TextValidationRule {
  IsInstagramUrl([String? error]) : super(error);

  @override
  bool isValid(String input) => isInstgramUrlValid(input);

  @override
  String toString() => 'not_valid_instagram_url';
}

bool isInstgramUrlValid(String url) => RegExp(
      r'^((https?):\/\/)((www\.)?(instagram)\.(com))\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)',
    ).hasMatch(url);
