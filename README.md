# **`Queen validators 👑`**

[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

[**مقال يشرح بالعربي الفائده من المكتبة وطريقة الاستخدام**](https://maxzodblog.blogspot.com/2021/02/validation.html)

# Features

- support all platforms
- support Null Safety
- support Flutter Form validation
- support variable validation

# Table of Contents

- [**`Queen validators 👑`**](#queen-validators-)
- [Features](#features)
- [Table of Contents](#table-of-contents)
- [Features](#features-1)
- [installation](#installation)
  - [Validate Forms](#validate-forms)
  - [Validate variables](#validate-variables)
- [Supported Rules](#supported-rules)
- [NOTE :](#note-)
- [NEXT](#next)

# Features

- easily customize form validation error massages with any localization solution
- need a new rule ? just extend QueenValidationRule<T> class and build your own rule
- extension on String and dynamic Types give you little push
- Support null Safety

# installation

```yaml
dependencies:
  queen_validators: ^0.2.3
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
print(badEmail.isEmail) // false

const validEmail = 'Queen@Royal.kingdom';
print(validEmail.isEmail) // true

```

# [Supported Rules](https://pub.dev/documentation/queen_validators/latest/queen_validators/queen_validators-library.html)

# NOTE :

- for basic form validation i think we cover big part of it
- but for variables validation we miss a lot of functionalities and
  the tests does not cover every thing , if you would to help feel free to do so

# NEXT

- [x] isEven
- [x] isOdd
- [x] isNegativeNumber
- [x] isPositiveNumber
- [ ] isStrongPassword
- [ ] isMediumPassword
- [ ] containsCapitalChars
- [ ] isCreditCard
- [ ] isVisa
- [ ] isMasterCard
- [ ] isPhoneNumber
- [ ] isCountryCode
- [ ] isIp
- [ ] isMacAddress
- [ ] isDoubleNumber
- [x] isRtlLanguage
- [x] isLtrLanguage
- [ ] isDate
- [x] isUrl
