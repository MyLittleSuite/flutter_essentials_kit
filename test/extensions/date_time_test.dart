import 'package:faker/faker.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final faker = Faker();
  late DateTime date;

  setUp(() {
    date = faker.date.dateTime();
  });

  test('startOfDay', () {
    final expected = DateTime(date.year, date.month, date.day, 0, 0, 0);
    expect(date.startOfDay(), equals(expected));
  });

  test('endOfDay', () {
    final expected = DateTime(
      date.year,
      date.month,
      date.day,
      23,
      59,
      59,
      999,
      999,
    );
    expect(date.endOfDay(), equals(expected));
  });

  test('yesterday', () {
    final expected = date.subtract(Duration(days: 1));
    expect(date.yesterday(), equals(expected));
  });

  test('tomorrow', () {
    final expected = date.add(Duration(days: 1));
    expect(date.tomorrow(), equals(expected));
  });

  test('firstDayOfWeek', () {
    final expectedDay = date.day - (date.weekday - 1);
    final expectedMonth = date.month;
    final expectedYear = date.year;

    final result = date.firstDayOfWeek();
    final resultDay = result.day;
    final resultMonth = result.month;
    final resultYear = result.year;

    expect(resultDay, equals(expectedDay));
    expect(resultMonth, equals(expectedMonth));
    expect(resultYear, equals(expectedYear));
  });

  test('lastDayOfWeek', () {
    final expectedDay = date.day + (DateTime.daysPerWeek - date.weekday);
    final expectedMonth = date.month;
    final expectedYear = date.year;

    final result = date.lastDayOfWeek();
    final resultDay = result.day;
    final resultMonth = result.month;
    final resultYear = result.year;

    expect(resultDay, equals(expectedDay));
    expect(resultMonth, equals(expectedMonth));
    expect(resultYear, equals(expectedYear));
  });

  test('firstDayOfMonth', () {
    final expectedDay = 1;
    final expectedMonth = date.month;
    final expectedYear = date.year;

    final result = date.firstDayOfMonth();
    final resultDay = result.day;
    final resultMonth = result.month;
    final resultYear = result.year;

    expect(resultDay, equals(expectedDay));
    expect(resultMonth, equals(expectedMonth));
    expect(resultYear, equals(expectedYear));
  });

  test('lastDayOfMonth', () {
    final dayDate = date.day;
    var expectedDate = date.subtract(Duration(days: dayDate - 1));
    expectedDate = DateTime(
      expectedDate.year,
      expectedDate.month + 1,
      expectedDate.day,
      expectedDate.hour,
      expectedDate.minute,
      expectedDate.second,
    );
    expectedDate = DateTime(
      expectedDate.year,
      expectedDate.month,
      expectedDate.day - 1,
      expectedDate.hour,
      expectedDate.minute,
      expectedDate.second,
    );

    final expectedDay = expectedDate.day;
    final expectedMonth = date.month;
    final expectedYear = date.year;

    final result = date.lastDayOfMonth();
    final resultDay = result.day;
    final resultMonth = result.month;
    final resultYear = result.year;

    expect(resultDay, equals(expectedDay));
    expect(resultMonth, equals(expectedMonth));
    expect(resultYear, equals(expectedYear));
  });

  test('nextMonth', () {
    final expected = DateTime(
      date.year,
      date.month + 1,
      date.day,
      date.hour,
      date.minute,
      date.second,
      date.millisecond,
      date.microsecond,
    );
    final result = date.nextMonth();

    expect(result, equals(expected));
  });

  test('previousMonth', () {
    final expected = DateTime(
      date.year,
      date.month - 1,
      date.day,
      date.hour,
      date.minute,
      date.second,
      date.millisecond,
      date.microsecond,
    );
    final result = date.previousMonth();

    expect(result, equals(expected));
  });

  test('nextWeek', () {
    final expected = date.add(Duration(days: DateTime.daysPerWeek));
    final result = date.nextWeek();

    expect(result, equals(expected));
  });

  test('previousWeek', () {
    final expected = date.subtract(Duration(days: DateTime.daysPerWeek));
    final result = date.previousWeek();

    expect(result, equals(expected));
  });

  test('nextYear', () {
    final expected = DateTime(
      date.year + 1,
      date.month,
      date.day,
      date.hour,
      date.minute,
      date.second,
      date.millisecond,
      date.microsecond,
    );
    final result = date.nextYear();

    expect(result, equals(expected));
  });

  test('previousYear', () {
    final expected = DateTime(
      date.year - 1,
      date.month,
      date.day,
      date.hour,
      date.minute,
      date.second,
      date.millisecond,
      date.microsecond,
    );
    final result = date.previousYear();

    expect(result, equals(expected));
  });

  test('onlyDate', () {
    final expected = DateTime(
      date.year,
      date.month,
      date.day,
      0,
      0,
      0,
      0,
      0,
    );
    final result = date.onlyDate();

    expect(result, equals(expected));
  });

  test('onlyTime', () {
    final expected = DateTime(
      0,
      0,
      0,
      date.hour,
      date.minute,
      date.second,
      date.millisecond,
      date.microsecond,
    );
    final result = date.onlyTime();

    expect(result, equals(expected));
  });
}
