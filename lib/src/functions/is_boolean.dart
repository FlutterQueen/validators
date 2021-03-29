bool isBoolean(dynamic v) {
  return [
    'true',
    'false',
    '1',
    '0',
    1,
    0,
    true,
    false,
    1.0,
    0.0,
  ].any((e) {
    if (e is String && v is String) {
      return e.trim().toLowerCase().compareTo(v.trim().toLowerCase()) == 0;
    } else {
      return e == v;
    }
  });
}
