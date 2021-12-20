import 'dart:async';
import 'dart:ui';

import 'package:nations/nations.dart';

class QueenValidatorsNationsLoaders extends NationsLoader {
  const QueenValidatorsNationsLoaders() : super('validation');

  @override
  FutureOr<Map<String, Object?>> load(Locale locale) => {};
}
