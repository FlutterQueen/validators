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
