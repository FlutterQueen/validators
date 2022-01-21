bool notContainsAny(String v, List<String> list) {
  return !containsAny(v, list);
}

/// check if `value` is `NOT` in `List`
bool isNotIn(Object v, List<Object> list) => !isIn(v, list);

///  check if `string` is in `List<String>`
bool isIn(
  Object v,
  List<Object> list,
) {
  if (v is String && list is List<String>) {
    return list.any((e) => e.compareTo(v) == 0);
  } else {
    return list.any((e) => e == v);
  }
}

// check if the provided string contains any keywords form the provided list
bool containsAny(
  String v,
  List<String> list, {
  bool caseSensitive = false,
  bool trim = true,
}) {
  if (trim) {
    return list.any(
      (e) => caseSensitive
          ? v.trim().contains(e.trim())
          : v.trim().toLowerCase().contains(e.trim().toLowerCase()),
    );
  }
  return list.any(
    (e) => caseSensitive
        ? v.contains(e.trim())
        : v.toLowerCase().contains(e.toLowerCase()),
  );
}
