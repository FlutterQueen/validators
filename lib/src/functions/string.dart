import 'package:queen_validators/src/extensions/string.dart';

/// return true if `trimmed string` is not empy
bool isNotEmptyString(String str) => str.isNotEmptyString;

/// return true if `trimmed string` is empty

bool isEmptyString(String str) => str.isEmptyString;

/// cheks if the value can be well formated email address

bool isEmail(String str) => str.isEmail;

/// checks if tow `strings` are the same
/// !`after trimming them`
bool match(String str, String str2, {bool ignoreCase = false}) => str.match(str2, ignoreCase: ignoreCase);

/// check if `string` is in `List` of Strings
/// ! automaticly ignore case sensitivty
bool isIn(String str, List<String> list) => str.isIn(list);

/// check if `string` is `NOT` in `List` of Strings
/// ! automaticly ignore case sensitivty
bool isNotIn(String str, List<String> list) => list.where((e) => match(str, e, ignoreCase: true)).isEmpty;

/// * applay yourn own regExp
bool matchRegx(String str, RegExp regExp) => regExp.hasMatch(str);
