library queen_validators;

export 'package:queen_validators/src/validator.dart';
export 'package:queen_validators/src/imp/dto.dart';
export 'package:queen_validators/src/rules/index.dart';
export 'package:queen_validators/src/extensions/index.dart';
export 'package:queen_validators/src/exception.dart';

import 'package:queen_validators/src/extensions/index.dart';

void main(List<String> args) {
  print('ahmed'.match('AhmeD'));
  print('ahmed'.match('AhmeD', ignoreCase: true));
}
