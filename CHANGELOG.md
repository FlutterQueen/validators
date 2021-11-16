## [1.0.3-beta]

- remove `IsInt` and `IsDouble` in favor of `IsNumber`

## [1.0.2-beta]

- variable validations support null values and all of them return false if the input is null

## [1.0.0-beta]

- more rules
- more tests
- NEW :: `OnFailureCallBack` pass it to `qValidator` and it gets called when a a field fails
- BREAKING :: remove `when` callback

## [0.2.5]

- new rules 🆕
  - IsDate 📅

## [0.2.4]

- feat: `isPort`

## [0.2.3]

- add `QRule` rule
- add match example
- fix issues
- rename `QueenValidationRule<T>` to `TextValidationRule`
- make `msg` parameter positional instead of optional

## [0.2.1]

- BREAKING : remove extensions (use functions instead)
- NEW : add validation functions ''.isEmail => isEmail('')
- NEW : More Rules And functions for more validation coverage

## [0.2.1]

- fix email validation #1

## [0.2.0]

- support null safety

## [0.0.1+9-beta]

- remove dto validation
- remove isUrl validation
- depend on lint package
- qValidator now return `String` instead of `dynamic`

## [0.0.1+8-beta]

- fix missing exports
- update the docs

## [0.0.1+7-beta]

- fix `MinLength` AND `MaxLength` as the were missing or = operator
  and will work as expected
- update the example app
- add `Contains` and `ContainsAny`
- add `NotContains` and `NotContainsAny`
- add arabic article to the docs

## [0.0.1+6-beta]

- fix `isRequired` and `IsOptional` conflict .
- fix `qValidator` now it validate properly
- rename isEmptyEmptyString to isNotEmptyString 'it trims then check length';

## [0.0.1+5-beta]

## [0.0.1+4-beta]

- Add tests
- fix `isEmail` ,`IsUrl` validation
- add matchRegx extensions to match regular expressions on `String`

## [0.0.1+3-beta]

- move unrelated validation extensions to `queen_extension` package !
- add `isIn` `isNotIn` extensions on `String`
- add `Match` , `IsIn` , `IsNotIn` Rules
- add supported rules to the documentation

## [0.0.1+2-beta]

- add `IsRequired` Rule
- add example app

## [0.0.1+1-beta]

- add `IsOptional` Rule
- remove useless extension methods on String
- comment the code
- fix readme

## [0.0.1] - [28-1-2021] initial API

- api interface for forms , extensions and Dto s
