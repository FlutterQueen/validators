import 'package:queen_validators/src/imp/validation.dart';
import 'package:queen_validators/src/extensions/string.dart';

/// checks if the input `is in` provided List;
class IsIn extends QueenValidationRule<String> {
  final List<String> list;
  IsIn(this.list, {String msg})
      : assert(list != null),
        super(msg);

  @override
  String get errorMsg => 'did not match';

  @override
  bool validate(String val) {
    return val.isIn(this.list);
  }
}
