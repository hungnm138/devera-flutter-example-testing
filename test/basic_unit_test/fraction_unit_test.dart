import 'package:flutter_example_testing/basic_unit_test/fraction.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('All testing related to the "Fraction" class.', () {
    test('Expect 6 divided by 3 to be 2.', () {
      final fraction = Fraction(numerator: 6, denominator: 3);

      final expected = 2.0;

      // Matcher argument here is only a single value, but the matcher library
      // offers many useful methods to be used.
      expect(fraction.toDouble, expected);
    });

    test('Expect invocation of "negate" to produce negated number.', () {
      final fraction = Fraction(numerator: 10, denominator: 2);

      final expected = -5.0;

      fraction.negate();

      expect(fraction.toDouble, expected);
    });

    test(
        'Expect exception to be thrown when attempting to '
        'initialize Fraction object with 0 denominator.', () {
      expect(() => Fraction(numerator: 1, denominator: 0),
          throwsA(isA<FractionException>()));
    });
  });
}
