extension NullSafeString on String? {
  String orEmpty() => this ?? '';
}

extension NullSafeInt on int? {
  int orZero() => this ?? 0;

  int orNonNegative() {
    final value = this ?? 0;
    return value < 0 ? 0 : value;
  }
}

extension NullSafeDouble on double? {
  double orZero() => this ?? 0.0;
}

extension NullSafeBool on bool? {
  bool orFalse() => this ?? false;
}

extension NullSafeList<T> on List<T>? {
  List<T> orEmpty() => this ?? [];
}
