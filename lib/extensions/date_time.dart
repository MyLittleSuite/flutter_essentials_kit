extension DateTimeOperations on DateTime {
  /// Create a new date setting hour, minute and second to 0.
  DateTime startOfDay() => _copyWith(hour: 0, minute: 0, second: 0);

  /// Create a new date setting hour to 23, minute to 59, and second to 59.
  DateTime endOfDay() => _copyWith(hour: 23, minute: 59, second: 59);

  /// Create a new date with yesterday values.
  DateTime yesterday() => subtract(Duration(days: 1));

  /// Create a new date with tomorrow values.
  DateTime tomorrow() => add(Duration(days: 1));

  /// Create a new first date of this month.
  DateTime firstDayOfMonth() => subtract(Duration(days: day - 1));

  /// Create a new last date of this month.
  DateTime lastDayOfMonth() {
    final nextMonth = this.firstDayOfMonth().nextMonth();
    return nextMonth.subtract(Duration(days: 1));
  }

  /// Create a new date with next month values.
  DateTime nextMonth() => _copyWith(month: month + 1);

  /// Create a new date with previous month values.
  DateTime previousMonth() => _copyWith(month: month - 1);

  /// Create a new date with next week values.
  DateTime nextWeek() => add(Duration(days: DateTime.daysPerWeek));

  /// Create a new date with previous week values.
  DateTime previousWeek() => subtract(Duration(days: DateTime.daysPerWeek));

  DateTime _copyWith({
    int year,
    int month,
    int day,
    int hour,
    int minute,
    int second,
  }) =>
      DateTime(
        year ?? this.year,
        month ?? this.month,
        day ?? this.day,
        hour ?? this.hour,
        minute ?? this.minute,
        second ?? this.second,
      );
}
