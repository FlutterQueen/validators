import 'package:queen_validators/src/functions/match.dart';

///  check if `string` is in `List<String>`
bool isIn(String string, List<String> list, {bool ignoreCase = false}) {
  return list.where((e) => match(string, e, ignoreCase: ignoreCase)).isNotEmpty;
}
