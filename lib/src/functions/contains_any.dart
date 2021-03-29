bool containsAny(String v, List<String> list) {
  return list.any((e) => v.trim().toLowerCase().contains(e.trim().toLowerCase()));
}
