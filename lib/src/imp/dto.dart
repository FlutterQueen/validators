import 'package:queen_validators/src/exception.dart';
import 'package:queen_validators/src/imp/validation.dart';

abstract class QueenDto {
  QueenDto() {
    _validate();
  }
  void _validate() {
    Map<String, List<String>> errorsResponse = {};
    final objMap = toMap();
    roles.forEach((key, value) {
      List<String> errors = [];
      value.forEach((element) {
        final currentRuleError = element.run(objMap[key]);
        if (currentRuleError != null) errors.add(currentRuleError);
      });
      if (errors.length > 0) errorsResponse[key] = errors;
    });

    throw QValidationException(errorsResponse);
  }

  Map<String, dynamic> toMap();
  Map<String, List<QueenValidationRule>> get roles;
}
