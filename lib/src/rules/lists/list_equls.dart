//  checks if list contains the given string exploded
bool isListEquals(String input, List<String> list, [String separator = ',']) {
  return list == input.split(separator);
}
