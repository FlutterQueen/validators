extension DynamicValiadtors on dynamic {
  bool get isString {
    return this.runtimeType == String;
  }

  bool get isBool {
    return this.runtimeType == bool;
  }

  bool get isInt {
    return this.runtimeType == int;
  }

  bool get isDouble {
    return this.runtimeType == double;
  }

  bool get isChar {
    return this.isString && this.length == 1;
  }

  bool get isList {
    return this.runtimeType == List;
  }

  bool get isMap {
    return this.runtimeType == Map;
  }

  bool isSameRef(dynamic val) {
    return identical(this, val);
  }
}
