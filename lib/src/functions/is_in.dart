///  check if `string` is in `List<String>`
bool isIn(
  dynamic value,
  List<dynamic> list,
) {
  return list.any((e) => e == value);
}
