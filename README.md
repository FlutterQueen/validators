# Queen validators 👑

<!-- - [Queen validators](#Queen-validators) -->

# Table of Contents

- [Queen validators 👑](#queen-validators-)
- [Table of Contents](#table-of-contents)
  - [Validate variables](#validate-variables)
  - [Validate Forms](#validate-forms)
  - [Validate Dto](#validate-dto)
  - [Features](#features)
  - [TODO](#todo)
  - [installation](#installation)

## Validate variables

```dart
const badEmail = 'QueenRoyal.kingdom';
print(badEmail.isEmail) // false

const validEmail = 'Queen@Royal.kingdom';
print(validEmail.isEmail) // true

```

```dart
const badUrl = 'queen url validation';
print(badUrl.isURL) // false

const validUrl = 'https://www.abc.com';
print(validUrl.isURL) // true

```

## Validate Forms

```dart
import 'package/queen_validators/queen_validators.dart';
@override
Widget build(BuildContext context) {
return TextFormField(
     // use qValidator function and provider list of rules to apply on this field
    validator: qValidator([
      IsEmail(),
      MinLength(8),
      MaxLength(30, msg: "optionally you can decide which message to display if the validation fails"),
    ]),
  );
  }
```

## Validate Dto

```dart
import 'package:queen_validators/queen_validators.dart';
 // extends QueenDto
class LoginDto extends QueenDto {
  final String email;
  final String password;

  LoginDto({
    this.email,
    this.password,
  }) : super();
// don't forget to call the super;


// setup your keys and rules
  @override
  Map<String, List<QueenValidationRule>> get rules => {
        'email': [IsEmail()],
        'password': [MinLength(5),MaxLength(50)]
      };


// make sure to user same keys you used in the roles getter
  @override
  Map<String, dynamic> toMap() {
    return {'email': this.email,
            'password': this.password,
            };
  }
}

void main() {
  try {
     // it will trow QValidationException containing the failed rules
    LoginDto(email: 'queen@kingdom.com', password: 'bar');
   } on QValidationException catch (e) {
    print(e.errors);
  }
}

```

## Features

- easily customize form validation error massages with any localization solution
- need a rule is not in this package ? just extend QueenValidationRule<T> class and build your own rule
- validate DTO s directly after instantiate them

## TODO

- [ ] arabic documentation
- [ ] example app
- [ ] publish to pub.dev
- [ ] tests

## installation

for now you can only use it from the github repo

**[how to use flutter package from github](https://stackoverflow.com/a/54023220/14834591)**
