import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:queen_validators/src/assets/ar.dart';
import 'package:queen_validators/src/assets/en.dart';

void main() {
  group('test loaders for supported languages', () {
    test('valid langs', () {
      expect(
        const QueenValidatorsNationsLoaders().load(const Locale('ar')),
        arValidationErrors,
        reason: 'its a supported language',
      );
      expect(
        const QueenValidatorsNationsLoaders().load(const Locale('en')),
        enValidationErrors,
        reason: 'its a supported language',
      );
    });

    test('unValid lngs', () {
      expect(
        const QueenValidatorsNationsLoaders().load(const Locale('es')),
        {},
        reason: 'its not a supported language',
      );
      expect(
        const QueenValidatorsNationsLoaders().load(const Locale('ex')),
        {},
        reason: 'its not a supported language',
      );
      expect(
        const QueenValidatorsNationsLoaders().load(const Locale('ez')),
        {},
        reason: 'its not a supported language',
      );
    });
  });
}
