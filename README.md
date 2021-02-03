# Queen validators 👑

# Table of Contents

- [Queen validators 👑](#queen-validators-)
- [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Supported Rules](#supported-rules)
  - [installation](#installation)
  - [Validate variables](#validate-variables)
  - [Validate Forms](#validate-forms)
  - [Validate Dto](#validate-dto)
  - [TODO](#todo)

## Features

- easily customize form validation error massages with any localization solution
- need a new rule ? just extend QueenValidationRule<T> class and build your own rule
- validate DTO s directly after instantiate them
- extension on String and dynamic Types give you little push

## Supported Rules

| Rule                                                          | #                                                   | default message            |
| ------------------------------------------------------------- | --------------------------------------------------- | -------------------------- |
| IsOptional                                                    | allows you to skip the errors if the input is empty |                            |
| IsRequired                                                    | the input value must not be empty                   | required                   |
| IsEmail                                                       | the input value must be a valid `email` address     | is not valid email address |
| IsUrl                                                         | the input value must be a valid `url` address       | not valid URL              |
| Match(`String` stringToMatchWith,{`bool` ignoreCase = false}) | the input value must match other String             | did not match              |
| IsIn(`List<String>`)                                          | the input value must be in the provided list        | is not accepted            |
| IsNotIn(`List<String>`)                                       | the input value must not be in the provided list    | is not valid email address |
| MaxLength(`int` max)                                          | the input value length must not be > the max        | 'max length is $max'       |
| MinLength(`int` min)                                          | the input value length must not be < the min        | 'min length is $min'       |
| RegExpRule(`RegExp` regX)                                     | the input value mush match the provided regX        | did not match              |

## installation

```yaml
dependencies:
  queen_validators: ^0.0.1+6-beta
```

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


// make sure to use same keys you used in the roles getter
  @override
  Map<String, dynamic> toMap() {
    return {'email': this.email,
            'password': this.password,
            };
  }
}

void main() {
  try {
     // it will throw QValidationException containing the failed rules
    LoginDto(email: 'queen@kingdom.com', password: 'bar');
   } on QValidationException catch (e) {
    print(e.errors);
  }
}

```

## TODO

- [x] example app
- [ ] phone validation
- [ ] color validation
- [ ] date validation
- [x] tests
