import 'package:queen_validators/queen_validators.dart';

/*
 * will not test these rule as they does not 
 * have extenoions just simple logic to test there Lenght or some thing like that
 * MaxLenght  >=
 * MinLenght  <=
 * Contains   String.contains()
 */
void main() {
  /// * is valid email
  test(
    name: 'is Email',
    valid: [
      'username@dmain.xxxx',
      'userNameWithNumbers132231@domain.com',
    ],
    notValid: [
      'userEmailWithoutAtSign.com',
      'userEmail@WithoutValidDomaincom',
      '@WithoutUserName.com',
    ],
    func: (val) => val.isEmail,
  );

  /// * is valid url
  test(
    name: 'is isURL',
    valid: [
      'http://www.flutter.dev',
      'https://www.flutter.dev',
      'someShing.someThingelse',
      'ftp:abcedf.com',
      'subdomain.domain.com.',
      'subdomain.domain.com/users/69.'
    ],
    notValid: [
      'random chars',
      'abc://www.flutter.dev',
    ],
    func: (val) => val.isURL,
  );

  /// * is match with case sensitivy
  test(
    name: 'match with case sensitivty',
    func: (String val) => val.match(
      'queen_validators',
    ),
    valid: ['queen_validators'],
    notValid: [
      'Queen_validators',
    ],
  );

  /// * is match with out case sensitivy
  test(
    name: 'match with `OUT` case sensitivty',
    func: (String val) => val.match('queen_validators', ignoreCase: true),
    valid: ['queen_validators', 'Queen_validators'],
    notValid: ['queen_ships'],
  );

  /// * is in List
  test(
    name: 'is in',
    func: (String val) => val.isIn(['foo', 'bar', 'zee', 'queen', 'validators']),
    valid: ['foo', 'bar', 'zee', 'queen', 'validators'],
    notValid: ['alpha', 'beta', 'omega', 'abcd'],
  );

  /// * is `Not` in List
  test(
    name: 'is in',
    func: (String val) => val.isNotIn(['foo', 'bar', 'zee', 'queen', 'validators']),
    valid: ['alpha', 'beta', 'omega', 'abcd'],
    notValid: ['foo', 'bar', 'zee', 'queen', 'validators'],
  );

  /// * Contains rule
  print('Done 👑');
}

void test({String name, List<String> valid, List<String> notValid, bool Function(String val) func}) {
  int index;
  String currentList;
  try {
    /// validate the `Valid` list first
    index = 0;
    currentList = 'valid';
    valid.forEach((element) {
      if (!func(element)) {
        printFail(name, index, currentList, '$element failed but should have passed !');
      }
      index++;
    });

    ///  validate the `NOT` valid list first
    index = 0;
    currentList = 'notValid';
    notValid.forEach((element) {
      if (func(element)) {
        printFail(name, index, currentList, '$element passed but should have failed !');
      }
      index++;
    });
  } catch (e) {}
}

void printFail(String name, int index, String list, String msg) {
  // print('|>====================<| Error |>=========================<|');
  // print('|>test name : $name            |>=========================<|');
  // print('|>index : $index at $list list |>=========================<|');
  // print('|>====================<|  Msg  |>=========================<|');
  // print(msg);

  print('testing : $name at index : $index at $list list $msg');

  // print('|>====================<| End   |>=========================<|');
}
