import 'package:queen_validators/queen_validators.dart';

class IsBool extends TextValidationRule {
  IsBool() : super();

  @override
  bool isValid(String input) => isBool(input);
  @override
  String get error => throw UnimplementedError();
}

bool isBool(Object? v) {
  return [
    'true',
    'false',
    true,
    false,
  ].any((e) {
    if (e is String && v is String) {
      return e.compareTo(v.trim().toLowerCase()) == 0;
    } else {
      return e == v;
    }
  });
}
