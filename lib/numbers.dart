// bool isArabicNum(String input) {
//   //ToDo if it's starts with 0 , i.e 032158 it's not a valid number
//   return RegExp('^[1-9][0-9]*\$').hasMatch(input);
// }

// bool isHindiNum(String input) {
//   //ToDo if it's starts with ٠ , i.e ٠٢٣٤٥٦٧ it's not a valid number
//   return RegExp('^[\u0661-\u0669][\u0660-\u0669]*\$').hasMatch(input);
// }

bool isNumber(String? input) => num.tryParse(input ?? '') != null;

bool maxValue(Object? value, num max) {
  num? _val;
  if (value is String) {
    _val = num.tryParse(value);
  } else if (value is num) {
    _val = value;
  } else if (value is int) {
    _val = value;
  } else if (value is double) {
    _val = value;
  }
  return _val != null && _val <= max;
}

bool minValue(Object? value, num min) {
  num? _val;
  if (value is String) {
    _val = num.tryParse(value);
  } else if (value is num) {
    _val = value;
  } else if (value is int) {
    _val = value;
  } else if (value is double) {
    _val = value;
  }
  return _val != null && _val >= min;
}
