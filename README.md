# **`Queen validators 1👑`**

[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

[**مقال يشرح بالعربي الفائده من المكتبة وطريقة الاستخدام**](https://maxzodblog.blogspot.com/2021/02/validation.html)

# Introduction

Welcome to the v1 of the `queen_validators` a Gift Made with 💜

## What is New ?

- More Rules 🛡
- More Tests 🧪
- More Flexibility 💪
  - easily integrate with any localization solution
  - magic rules `IsOptional()` `IsRequired()` ✊
  - extend the base class `TextValidationRule` and build your own custom rules
  - use `.when(WhenCallback)` to make the rule optional base on the callback result 😎
  - use `qValidation(args,onFailureCallBack)` to execute code on specific FromFelid failure 🤘
  - use `QueenValidators.enableLogs()` to enable console Logs 🚧
  -
- Documentation for each Rule 📃
- Support for
  - All platforms 🌍
  - Null Safety 🦺
  - All Flutter versions 🐦
  - Flutter vanilla Form validation
  - Variable validation

# Get Started

```yaml
dependencies:
  queen_validators: ^1.0.0
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
