// bool isCreditCard(String str) {
//   final creditCard = RegExp(
//       r'(?:4[0-9]{12}(?:[0-9]{3,6})?|5[1-5][0-9]{14}|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}|6(?:011|5[0-9][0-9])[0-9]{12,15}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11}|6[27][0-9]{14})$');
//   final sanitized = str.replaceAll(' ', '');

//   if (!creditCard.hasMatch(sanitized)) {
//     return false;
//   }
//   var sum = 0;
//   String digit;
//   var shouldDouble = false;

//   for (var i = sanitized.length - 1; i >= 0; i--) {
//     digit = sanitized.substring(i, i + 1);
//     var tmpNum = int.parse(digit);

//     if (shouldDouble == true) {
//       tmpNum *= 2;
//       if (tmpNum >= 10) {
//         sum += (tmpNum % 10) + 1;
//       } else {
//         sum += tmpNum;
//       }
//     } else {
//       sum += tmpNum;
//     }
//     shouldDouble = !shouldDouble;
//   }

//   return sum % 10 == 0;
// }
