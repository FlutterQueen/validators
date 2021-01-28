import 'package:queen_validators/src/imp/validation.dart';

class RegExpRule extends QueenValidationRule {
  final RegExp regX;
  RegExpRule(this.regX, {String msg}) : super(msg);

  @override
  String run(String val) {
    return regX.hasMatch(val) ? null : msg ?? 'did not match';
  }
}
