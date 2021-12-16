import 'package:queen_validators/queen_validators.dart';
import 'package:queen_validators/src/text_rule_class.dart';
import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

class IsEgyptianPhone extends TextValidationRule {
  IsEgyptianPhone([String? error]) : super(error);

  @override
  bool isValid(String input) => isEgyptianNumber(input);
  @override
  String get localizedError => throw UnimplementedError();
}

bool isEgyptianNumber(String str) {
  final phoneRegX = RegExp('^01[0125][0-9]{8}\$');

  return phoneRegX.hasMatch(str);
}
