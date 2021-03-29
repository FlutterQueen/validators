import 'package:queen_validators/queen_validators.dart';

bool notContainsAny(String v, List<String> list) {
  return !containsAny(v, list);
}
