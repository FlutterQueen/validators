# **`#GazzaUnderAttack`**

# **`Queen validators 👑`**

[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

[**مقال يشرح بالعربي الفائده من المكتبة وطريقة الاستخدام**](https://maxzodblog.blogspot.com/2021/02/validation.html)

## supported platforms

Support null Safety

- `DART`
- `NATIVE`
- `JS`
- `FLUTTER`
- `ANDROID`
- `IOS`
- `LINUX`
- `MACOS`
- `WEB`
- `WINDOWS`

# NOTE :

- for basic form validation i think we cover big part of it
- but for variables validation we miss a lot of functionalities and
  the tests does not cover every thing , if you would to help feel free to add more rules and functions

# `Table of Contents`

- [**`#GazzaUnderAttack`**](#gazzaunderattack)
- [**`Queen validators 👑`**](#queen-validators-)
  - [supported platforms](#supported-platforms)
- [NOTE :](#note-)
- [`Table of Contents`](#table-of-contents)
  - [Features](#features)
  - [installation](#installation)
  - [Validate Forms](#validate-forms)
  - [Validate variables](#validate-variables)
  - [Supported Rules](#supported-rules)

## Features

- easily customize form validation error massages with any localization solution
- need a new rule ? just extend QueenValidationRule<T> class and build your own rule
- extension on String and dynamic Types give you little push
- Support null Safety

## installation

```yaml
dependencies:
  queen_validators:
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

## Validate variables

```dart
const badEmail = 'QueenRoyal.kingdom';
print(badEmail.isEmail) // false

const validEmail = 'Queen@Royal.kingdom';
print(validEmail.isEmail) // true

```

## Supported Rules

| Rule                                                          | #                                                                       | default message                                       |
| ------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------- |
| IsOptional                                                    | allows you to skip the errors if the input is empty                     |                                                       |
| IsRequired                                                    | the input value must not be empty                                       | required                                              |
| IsEmail                                                       | the input value must be a valid `email` address                         | is not valid email address                            |
| Match(`String` stringToMatchWith,{`bool` ignoreCase = false}) | the input value must match other String                                 | did not match                                         |
| IsIn(`List<String>`)                                          | the input value must be in the provided list                            | is not accepted                                       |
| IsNotIn(`List<String>`)                                       | the input value must not be in the provided list                        | is not valid email address                            |
| MaxLength(`int` max)                                          | the input value length must not be > the max                            | 'max length is $max'                                  |
| MinLength(`int` min)                                          | the input value length must not be < the min                            | 'min length is $min'                                  |
| RegExpRule(`RegExp` regX)                                     | the input value mush match the provided regX                            | did not match                                         |
| Contain(`String` value)                                       | checks if the input does contain the provided value                     | must contain $value                                   |
| NotContains(`String` val)                                     | checks if input does not contain the provided value                     | must not contain $value                               |
| ContainsAny(`List<String>` val)                               | check if the value contain at lest one of String form the provided list | must contain any blacklisted keywords                 |
| NotContainsAny(`List<String>` val)                            | check if the value does not contain any item from the provided list     | must contain at least one of the whitelisted keywords |
