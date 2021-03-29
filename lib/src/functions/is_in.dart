///  check if `string` is in `List<String>`
bool isIn(
  dynamic v,
  List<dynamic> list,
) {
  if (v is String && list is List<String>) {
    return list.any((e) => e.compareTo(v) == 0);
  } else {
    return list.any((e) => e == v);
  }
}
