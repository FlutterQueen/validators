import 'package:queen_validators/src/imp/validation.dart';

/// check if the value contain at lest one of String form the provided list

class ContainsAny extends QueenValidationRule {
  final List<String> value;

  const ContainsAny(this.value, {String? msg}) : super(msg);

  @override
  String get errorMsg => 'must contain any blacklisted keywords';

  @override
  bool validate(dynamic val) {
    return value.where((element) => (val as String).trim().contains(element)).isNotEmpty;
  }
}
