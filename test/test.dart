// import 'package:queen_validators/src/functions/string/is_not_in.dart';
// import 'package:queen_validators/src/functions/string/match.dart';

// /*
//  * will not test these rule as they does not
//  * have extensions just simple logic to test there Length or some thing like that
//  * MaxLength  >=
//  * MinLength  <=
//  * Contains   String.contains()
//  */
// void main() {
//   /// * is match with case sensitive
//   test(
//     name: 'match with case sensitivity',
//     func: (String val) => match(
//       val,
//       'queen_validators',
//     ),
//     valid: ['queen_validators'],
//     notValid: [
//       'Queen_validators',
//     ],
//   );

//   /// * is match with out case sensitive
//   test(
//     name: 'match with `OUT` case sensitivity',
//     func: (String val) => val.match('queen_validators', ignoreCase: true),
//     valid: ['queen_validators', 'Queen_validators'],
//     notValid: ['queen_ships'],
//   );

//   /// * is in List
//   test(
//     name: 'is in',
//     func: (String val) => val.isIn(['foo', 'bar', 'zee', 'queen', 'validators']),
//     valid: ['foo', 'bar', 'zee', 'queen', 'validators'],
//     notValid: ['alpha', 'beta', 'omega', 'abcd'],
//   );

//   /// * is `Not` in List
//   test(
//     name: 'is in',
//     func: (String val) => isNotIn(val,['foo', 'bar', 'zee', 'queen', 'validators']),
//     valid: ['alpha', 'beta', 'omega', 'abcd'],
//     notValid: ['foo', 'bar', 'zee', 'queen', 'validators'],
//   );

//   /// * Contains rule
//   // ignore: avoid_print
//   print('Done 👑');
// }

// void test({
//   required String name,
//   required List<String> valid,
//   required List<String> notValid,
//   required bool Function(String val) func,
// }) {
//   int index;
//   String currentList;

//   /// validate the `Valid` list first
//   index = 0;
//   currentList = 'valid';
//   for (final element in valid) {
//     if (!func(element)) {
//       printFail(name, index, currentList, '$element failed but should have passed !');
//     }
//     index++;
//   }

//   ///  validate the `NOT` valid list first
//   index = 0;
//   currentList = 'notValid';
//   for (final element in notValid) {
//     if (func(element)) {
//       printFail(name, index, currentList, '$element passed but should have failed !');
//     }
//     index++;
//   }
// }

// void printFail(String name, int index, String list, String msg) {
//   // print('|>====================<| Error |>=========================<|');
//   // print('|>test name : $name            |>=========================<|');
//   // print('|>index : $index at $list list |>=========================<|');
//   // print('|>====================<|  Msg  |>=========================<|');
//   // print(msg);

//   // ignore: avoid_print
//   print('testing : $name at index : $index at $list list $msg');

//   // print('|>====================<| End   |>=========================<|');
// }
