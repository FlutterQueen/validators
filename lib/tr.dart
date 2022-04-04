// import 'package:queen_validators/queen_validators.dart';

// ignore: avoid_classes_with_only_static_members
import 'queen_validators.dart';

// ignore: avoid_classes_with_only_static_members

abstract class ValidatorsLocalization {
  static final _map = <String, String Function(TextValidationRule)>{};
  static String translate(
    TextValidationRule rule,
  ) =>
      _map[rule.runtimeType.toString()] == null
          ? rule.toString()
          : _map[rule.runtimeType.toString()]!(rule);

  static void on<T extends TextValidationRule>(
    String Function(TextValidationRule) func,
  ) =>
      _map[T.toString()] = func;
}
