import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart' hide isNotEmpty;
import 'package:queen_validators/src/assets/ar.dart';
import 'package:queen_validators/src/assets/en.dart';

class QueenValidatorsNationsLoaders extends NationsLoader {
  const QueenValidatorsNationsLoaders() : super('validation');

  @override
  Map<String, dynamic> load(Locale locale) {
    // TODO :: move to nations_assets
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

class NationsTestConfig extends NationsConfig {
  @override
  List<NationsLoader> get loaders => [
        const QueenValidatorsNationsLoaders(),
      ];
}

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await Nations.boot(NationsTestConfig());
  });

  final rules = <TextValidationRule>[
    /// colors
    const IsHexColor(),
    IsDateMillis(),
    const IsDate(),
    IsDateAfter(DateTime.now()),

    /// it

    const IsBool(),
    const IsEmail(),
    const IsPort(),
    RegExpRule(RegExp('')),

    /// localization
    IsLtrLanguage(),
    IsRTLLanguage(),

    /// lists
    ContainsAny([]),
    IsIn([]),
    IsNotIn([]),
    NotContainsAny([]),

    /// numbers
    IsArabicNum(),
    IsHindiNum(),
    MaxValue(10),
    MinValue(10),

    IsNumber(),

    /// phones
    IsEgyptianPhone(),
    ISKsaPhone(),

    /// text
    Contains(''),
    EndsWith(''),
    IsEmpty(''),
    IsRequired(''),
    Match(''),
    MaxLength(10),
    MinLength(10),
    NotContains(''),
    StartsWith(''),

    /// dates
    const IsPort(),
  ];
  for (final rule in rules) {
    test('${rule.runtimeType} Rule localization', () {
      expect(rule.localizedError, isNotEmpty);
    });
  }
}
