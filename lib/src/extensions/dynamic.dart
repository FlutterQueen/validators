extension DynamicExtension on dynamic {
  bool get isString {
    // ignore: unnecessary_this
    return this.runtimeType == String;
  }

  bool get isBool {
    // ignore: unnecessary_this
    return this.runtimeType == bool;
  }

  bool get isInt {
    // ignore: unnecessary_this
    return this.runtimeType == int;
  }

  bool get isDouble {
    // ignore: unnecessary_this
    return this.runtimeType == double;
  }

  bool get isChar {
    return isString && this.length == 1;
  }

  bool get isList {
    // ignore: unnecessary_this
    return this.runtimeType == List;
  }

  bool get isMap {
    // ignore: unnecessary_this
    return this.runtimeType == Map;
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
