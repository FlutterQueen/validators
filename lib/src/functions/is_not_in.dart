/// check if `value` is `NOT` in `List`
bool isNotIn(dynamic val, List<dynamic> list, {bool ignoreCase = false}) {
  return list.any((e) => e != val);
}
