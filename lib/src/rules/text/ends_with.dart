import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

class EndsWith extends TextValidationRule {
  final String end;

  EndsWith(this.end, [String? error]) : super(error);

  @override
  bool isValid(String input) => input.trim().endsWith(end);

  @override
  String get localizedError => "must_end_with".args(
        {
          "value": end,
        },
      );
}
