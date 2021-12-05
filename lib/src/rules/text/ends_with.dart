import '../../../queen_validators.dart';

class EndsWith extends TextValidationRule {
  final String end;
  EndsWith(this.end);

  @override
  bool isValid(String input) => input.trim().endsWith(end);
  @override
  String get error => throw UnimplementedError();
}
