class Fraction {
  /// The numerator of the fraction.
  late final int _numerator;

  /// The denominator of the fraction.
  late final int _denominator;

  Fraction({int numerator = 0, int denominator = 1}) {
    _numerator = numerator;
    _denominator = denominator == 0
        ? throw FractionException("Denominator must not be zero.")
        : denominator;
  }

  void negate() => _numerator *= -1;

  double get toDouble => _numerator / _denominator;

  @override
  String toString() {
    return 'Fraction{_numerator: $_numerator, _denominator: $_denominator}';
  }
}

class FractionException implements Exception {
  final String message;

  const FractionException(this.message);
}
