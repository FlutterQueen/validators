import 'dart:async';
import 'dart:ui';

import 'package:nations/nations.dart';
import 'package:queen_validators/src/assets/ar.dart';
import 'package:queen_validators/src/assets/en.dart';

class QueenValidatorsNationsLoaders extends NationsLoader {
  const QueenValidatorsNationsLoaders() : super('validation');

  @override
  FutureOr<Map<String, Object?>> load(Locale locale) {
    switch (locale.languageCode) {
      case 'ar':
        return arValidationErrors;
      case 'en':
        return enValidationErrors;
      default:
        return {};
    }
  }
}
