import 'package:queen_validators/src/imp/validation.dart';

/// check if the value contain at lest one of String form the provided list

class ContainsAny extends QueenValidationRule {
  final List<String> value;

  ContainsAny(this.value, {String msg}) : super(msg);

  @override
  String get errorMsg => 'must contain any blacklisted keywords';

  @override
  bool validate(String val) {
    return this
        .value
        .where((element) => val.trim().contains(element))
        .isNotEmpty;
  }
}
