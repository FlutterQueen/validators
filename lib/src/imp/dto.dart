import 'package:queen_validators/src/exception.dart';
import 'package:queen_validators/src/imp/validation.dart';

abstract class QueenDto {
  QueenDto() {
    /// when a new istance of child of this class created
    /// calling super in its constractor will call the `_validae()` function
    /// wich will trigger the `DTO` validation process
    _validate();
  }

  /// ! might throw QValidationException
  void _validate() {
    Map<String, List<String>> errorsResponse = {};
    final objMap = toMap();
    rules.forEach((key, value) {
      List<String> errors = [];
      value.forEach((element) {
        final currentRuleError = element.run(objMap[key]);
        if (currentRuleError != null) errors.add(currentRuleError);
      });
      if (errors.isNotEmpty) errorsResponse[key] = errors;
    });

    throw QValidationException(errorsResponse);
  }

  Map<String, dynamic> toMap();

  Map<String, List<QueenValidationRule>> get rules;
}
