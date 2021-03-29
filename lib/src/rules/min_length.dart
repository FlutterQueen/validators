import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input characters length is bigger than the min field

class MinLength extends QueenValidationRule<String> {
  final int min;
  final bool trim;

  const MinLength(this.min, {String? msg, this.trim = true}) : super(msg);

  @override
  String get defaultError => 'min length is $min';

  @override
  bool isValid(String val) {
    return trim ? val.trim().length >= min : val.length >= min;
  }
}
