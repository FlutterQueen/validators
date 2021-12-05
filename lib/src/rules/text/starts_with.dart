import '../../../queen_validators.dart';

class StartsWith extends TextValidationRule {
  final Pattern pattern;

  StartsWith(this.pattern);

  @override
  bool isValid(String input) => input.trim().startsWith(pattern);
  @override
  String get error => throw UnimplementedError();
}
