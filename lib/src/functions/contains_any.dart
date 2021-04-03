// check if the provider string contains any keywords form the provided list
bool containsAny(String v, List<String> list) {
  return list
      .any((e) => v.trim().toLowerCase().contains(e.trim().toLowerCase()));
}
