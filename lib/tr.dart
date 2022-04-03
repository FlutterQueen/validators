// import 'package:queen_validators/queen_validators.dart';

// ignore: avoid_classes_with_only_static_members
import 'queen_validators.dart';

// ignore: avoid_classes_with_only_static_members
abstract class ValidatorsLocalization {
  static String Function(
    TextValidationRule rule,
    // ignore: prefer_function_declarations_over_variables
  ) translate = (rule) => rule.toString();
}
