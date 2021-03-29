import 'package:queen_validators/queen_validators.dart';

/// check if `value` is `NOT` in `List`
bool isNotIn(dynamic v, List<dynamic> list) => !isIn(v, list);
