import 'package:queen_validators/src/functions/match.dart';

/// check if `string` is `NOT` in `List` of Strings

bool isNotIn(String string, List<String> list, {bool ignoreCase = false}) {
  return list.where((e) => match(string, e, ignoreCase: ignoreCase)).isEmpty;
}
