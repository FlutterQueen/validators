# Queen validators 👑

which problem does this package solve ?

- [x] validate flutter TextFormFields
- [x] validate Dtos

# features

- [x] easily customize error massages with any localization solution
- [x] can use it how ever you want
- [x] easily add new Rules
- [x] validate Dtos directly after instantiate them

# Examples

## **Functions**

## you can use validator functions any where the will return a boolean

```dart
import 'package/queen_validators/index.dart';
void main(){
   final foo = 'queen 👑';
   print(isEmail(foo));    // false
   final bar = 'queen@kingdom.com';
   print(isEmail(foo));    // true
}
```

## **Queen Validators**

## a function that can user more the one rule to validate **TextFormField** Widget

```dart
import 'package/queen_validators/index.dart';
@override
Widget build(BuildContext context) {
return   TextFormField(
    validator: qValidator([
      IsEmail(),
      MinLength(8),
      MaxLength(30, msg: "optionally you can decide which message to display if the validation fails"),
    ]),
  );
  }
```

## **QueenDto**

## some times you might need to validate entire object at once also the queen can help you with that

```dart
import 'package:queen_validators/index.dart';
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
  Map<String, List<QueenValidationRule>> get roles => {
        'email': [IsEmail()],
        'password': [MinLength(5),MaxLength(50)]
      };


// make sure to user same keys you used in the roles getter
  @override
  Map<String, dynamic> toMap() {
    return {'email': this.email, 'password': this.password};
  }
}

void main() {
  try {
     // it will trow QValidationException containing the failed rules
    LoginDto(email: 'queen@kingdom.com', password: 'bar');
    print('ok 201');
  } on QValidationException catch (e) {
    print(e.errors);
  }
}

```

# Supported Rules

refer to src/functions in the source code

# TODO

- [ ] add functions to the docs
- [ ] arabic documentation
- [ ] comment the code
- [ ] add new validator functions
- [ ] example app
- [ ] publish to pub.dev

# installation

### for now you can only use it from the github repo

**[how to use flutter package from github](https://stackoverflow.com/a/54023220/14834591)**
