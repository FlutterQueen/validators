extension DynamicExtension on dynamic {
  bool get isString {
    return runtimeType == String;
  }

  bool get isBool {
    return runtimeType == bool;
  }

  bool get isInt {
    return runtimeType == int;
  }

  bool get isDouble {
    return runtimeType == double;
  }

  bool get isChar {
    return isString && this.length == 1;
  }

  bool get isList {
    return runtimeType == List;
  }

  bool get isMap {
    return runtimeType == Map;
  }

  bool isSameRef(dynamic val) {
    return identical(this, val);
  }

  bool get isNull {
    return this == null;
  }

  bool get isNotNull {
    return this != null;
  }
}
