import 'package:flutter_test/flutter_test.dart';
import 'package:queen_validators/src/rules/it/is_ip_address.dart';

void main() {
  group('IsIpAddress Rules', () {
    test('returns true if valid ip address', () {
      expect(
        const IsIpAddress().isValid('123.123.14.2'),
        isTrue,
        reason: 'this is a valid ip address',
      );
      expect(
        const IsIpAddress().isValid('0.0.0.0'),
        isTrue,
        reason: 'this is a valid ip address',
      );
      expect(
        const IsIpAddress().isValid('255.255.255.255'),
        isTrue,
        reason: 'this is a valid ip address',
      );
    });
    test('returns false  if invalid ip address ', () {
      expect(
        const IsIpAddress().isValid('-1.123.123.123'),
        isFalse,
        reason: 'ip cant contain value smaller than 0',
      );
      expect(
        const IsIpAddress().isValid('623.123.14.2'),
        isFalse,
        reason: 'ip cant contain value larger than 255',
      );
      expect(
        const IsIpAddress().isValid('123.123.14'),
        isFalse,
        reason: 'ip address cant be less than 4 digits',
      );
      expect(
        const IsIpAddress().isValid('x.123.14.2'),
        isFalse,
        reason: 'ip address cant contain letters',
      );
    });
    test('returns false  if  ip address not String', () {
      expect(
        isIpAddress(null),
        isFalse,
        reason: 'ip cant be null value',
      );
      expect(
        isIpAddress(1.123),
        isFalse,
        reason: 'ip cant be double value',
      );
      expect(
        isIpAddress(0x1222),
        isFalse,
        reason: 'ip cant be hexa value',
      );
    });
  });
}
