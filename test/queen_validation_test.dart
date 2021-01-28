import 'package:queen_validators/index.dart';

import 'login.dto.dart';

void main() {
  try {
    LoginDto(email: 'queen@kingdom.com', password: 'bar');
    print('ok 201');
  } on QValidationException catch (e) {
    print(e.errors);
  }
}
