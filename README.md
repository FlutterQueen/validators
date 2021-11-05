# **`Queen validators 1👑`**

[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

[**مقال يشرح بالعربي الفائده من المكتبة وطريقة الاستخدام**](https://maxzodblog.blogspot.com/2021/02/validation.html)

# Features

- [x] Support Null Safety
- [x] Support all platforms
- [x] Validate Flutter Forms in vanilla flutter
- [x] Validate Varibales (each rule have function in same name put in camelCase)
- [ ] Localization
  - [x] easily integrate with any localization solution
  - [ ] support Nations out of the box
- [ ] magic rules `IsOptional()` `IsRequired()` ✊
- [ ] extend the base class `TextValidationRule` and build your own custom rules
- [ ] use `.when(WhenCallback)` to make the rule optional base on the callback result 😎
- [ ] use `qValidation(args,onFailureCallBack)` to execute code on specific FromFelid failure 🤘
- [ ] use `QueenValidators.enableLogs()` to enable console Logs 🚧
- [ ] Documentation for each Rule 📃

# Get Started

```yaml
dependencies:
  queen_validators: <latest_version>
```

## Validate Forms

```dart
import 'package/queen_validators/queen_validators.dart';
@override
Widget build(BuildContext context) {
return TextFormField(
     // use qValidator function and provider list of rules to apply on this field
    validator: qValidator([
      IsRequired(),
      IsOptional()
      IsEmail(),
      MinLength(8),
      MaxLength(30, "optionally you can override the failure if the validation fails"),
    ]),
  );
  }
```

## Validate variables

```dart
const badEmail = 'QueenRoyal.kingdom';
print(isEmail(badEmail)) // false

const validEmail = 'Queen@Royal.kingdom';
print(isEmail(validEmail)) // true

```

# [Click to Open Supported Rules List](https://pub.dev/documentation/queen_validators/latest/queen_validators/queen_validators-library.html)

# NOTES

- some rules takes the failure message as optional param like `IsDateMilli`

# TODO

## Colors

- support hex colors opacity

# Rules

## Text

| Rule          | Function               | Description                             | trims | Notes                       |
| ------------- | ---------------------- | --------------------------------------- | ----- | --------------------------- |
| `Contains`    | ❌                     | if input contains some some value       | ✔     | --------------------------- |
| `NotContains` | ❌                     | if input NOT contains the some value    | ✔     | --------------------------- |
| `IsEmpty`     | `isEmpty(String)`      | if input is empty                       | ✔     | --------------------------- |
| `IsNotEmpty`  | `isNotEmpty(String)`   | if input is not empty                   | ✔     | --------------------------- |
| `IsRequired`  | ❌                     | --------------------------------------- | ✔     | identical with `IsNotEmpty` |
| `Match`       | `match(Object,Object)` | if two inputs is the same type && value | ❌    | --------------------------- |
| `MaxLength`   | ❌                     | if input length <= max                  | ✔     | --------------------------- |
| `MinLength`   | ❌                     | if input length >= min                  | ✔     | --------------------------- |
