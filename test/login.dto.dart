import 'package:queen_validators/index.dart';

class LoginDto extends QueenDto {
  final String email;
  final String password;

  LoginDto({
    this.email,
    this.password,
  }) : super();

  @override
  Map<String, List<QueenValidationRule>> get roles => {
        'email': [
          IsEmail(msg: "تاكد من الابريد الالكتروني"),
          MinLength(5, msg: "البريد الالكتروني قصير جدا "),
        ],
        'password': [
          MinLength(5, msg: "كلمه المرور قصيرة جدا"),
          MaxLength(5, msg: "كلمه المرور طويلة جدا"),
        ]
      };

  @override
  Map<String, dynamic> toMap() {
    return {'email': this.email, 'password': this.password};
  }
}
