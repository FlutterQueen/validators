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
    if (e is String) {
      return e.toLowerCase() == v.toString().toLowerCase();
    } else {
      return e == v;
    }
  });
}
