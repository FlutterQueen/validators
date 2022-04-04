# **`Q U E E N`** 👑

## **`For More Features OUT-OF-THE-BOX (localization) see `** [Official Documentation site](https://flutterqueen.github.io/website/)

# **`Validators`** 🌍

<a href="https://pub.dev/packages/queen_validators"><img src="https://img.shields.io/pub/v/queen_validators?style=for-the-badge" alt="Pub"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/FLutterQueen/queen_validators?style=for-the-badge" alt="License: MIT"></a>
<a href="https://img.shields.io/github/issues/FlutterQueen/queen_validators"><img src="https://img.shields.io/github/issues/FlutterQueen/queen_validators?logo=queen&style=for-the-badge" alt="issues"></a>
<a href="https://img.shields.io/github/issues-pr/FlutterQueen/queen_validators"><img src="https://img.shields.io/github/issues-pr/FlutterQueen/queen_validators?style=for-the-badge" alt="Pull requests"></a>
<a href="https://img.shields.io/github/issues/FlutterQueen/queen_validators"><img src="https://img.shields.io/github/forks/FlutterQueen/queen_validators?style=for-the-badge" alt="forks"></a>
<a href="https://img.shields.io/github/issues/FlutterQueen/queen_validators"><img src="https://img.shields.io/github/stars/FlutterQueen/queen_validators?style=for-the-badge" alt="Starts"></a>
[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)
[![codecov](https://codecov.io/gh/FlutterQueen/validators/branch/main/graph/badge.svg?token=BUTRNSHUA6)](https://codecov.io/gh/FlutterQueen/validators)

<a href="https://www.buymeacoffee.com/maxzod" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

## Usage

if you need

- simple true of false function to validate a input
- validate a normal flutter Form field

```dart
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

## customization

if you need to show a custom error message you can

- use the rule constructor (scooped for a single rule)
- use `ValidatorsLocalization.on` (scooped for the entire Type rules)

```dart
void main() {
    ValidatorsLocalization.on<IsRequired>((rule) => 'the new required message');
}
```

- if you use queen all the rules are localized out of the box 🎁 !
