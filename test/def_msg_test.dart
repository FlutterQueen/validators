import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:queen_validators/src/rules/it/is_ip_address.dart';
import 'package:queen_validators/src/rules/urls/is_secure_url.dart';

void main() {
  test('all rules override toString', () {
    final rules = <TextValidationRule>[
      // colors
      const IsHexColor(),

      /// dates
      IsDateAfter(DateTime.now()),
      IsDateMillis(),
      const IsDate(),

      /// IT
      const IsBool(),
      const IsEmail(),
      const IsPort(),
      RegExpRule(RegExp('')),
      const IsIpAddress(),

      /// languages
      IsRTLLanguage(),
      IsLtrLanguage(),

      /// Lists
      ContainsAny([]),
      IsIn([]),
      IsNotIn([]),
      NotContainsAny([]),

      /// Numbers
      IsArabicNum(),
      IsHindiNum(),
      IsNumber(),
      MaxValue(5),
      MinValue(5),

      /// phones
      IsEgyptianPhone(),
      ISKsaPhone(),

      /// Text
      Contains(''),
      EndsWith(''),
      IsEmpty(),
      IsRequired(''),
      Match(''),
      MaxLength(0),
      MinLength(0),
      NotContains(''),
      StartsWith(''),

      /// url
      IsFacebookUrl(),
      IsInstagramUrl(),
      IsUrl(),
      IsYoutubeUrl(),
      const IsSecureUrl(),

      /// text
      /// magic
      /// this rule throws exeption when called and have another test some where else
      // IsOptional(),
    ];
    for (final rule in rules) {
      expect(
        rule.toString() == "Instance of '${rule.runtimeType}'",
        isFalse,
      );
    }
  });
}
