import 'package:faker/faker.dart';
import 'package:flutter_essentials_kit/extensions/date_format.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  final faker = Faker();
  final Map<String, DateFormat> patterns = {
    "dd-MM-yyyy": DateFormats.dash_ddMMyyyy(),
    "yyyy-MM-dd'T'HH:mm:ssZZZZZ":
        DateFormats.dash_yyyyMMddT_column_HHmmssZZZZZ(),
    "yyyy-MM-dd": DateFormats.dash_yyyyMMdd(),
    "yyyy-MM-dd HH:mm:ss": DateFormats.dash_yyyyMMdd_column_HHmmss(),
    "yyyyMMdd": DateFormats.yyyyMMdd(),
    "dd MMMM yyyy": DateFormats.spacing_ddMMMMyyyy(),
    "EEEE dd MMM yyyy": DateFormats.spacing_EEEEddMMMyyyy(),
    "EEEE dd MMMM yyyy": DateFormats.spacing_EEEEddMMMMyyyy(),
    "EE": DateFormats.EE(),
    "EEE": DateFormats.EEE(),
    "dd": DateFormats.dd(),
    "yyyy": DateFormats.yyyy(),
    "MMMM yyyy": DateFormats.spacing_MMMMyyyy(),
    "dd/MM": DateFormats.slash_ddMM(),
    "dd/MM/yyyy": DateFormats.slash_ddMMyyyy(),
    "dd/MM/yyyy HH:mm": DateFormats.slash_ddMMyyyy_column_HHmm(),
    "dd/MM/yyyy h:mm": DateFormats.slash_ddMMyyyy_column_hmm(),
    "MM/dd/yyyy HH:mm": DateFormats.slash_MMddyyyy_column_HHmm(),
    "MM/dd/yyyy h:mm": DateFormats.slash_MMddyyyy_column_hmm(),
    "HH:mm": DateFormats.column_HHmm(),
    "HH:mm:ss": DateFormats.column_HHmmss(),
    "h:mm": DateFormats.column_hmm(),
  };
  List<DateTime> dates;

  setUpAll(() async {
    await initializeDateFormatting('it');
  });

  setUp(() {
    dates = [
      DateTime.now(),
      faker.date.dateTime(),
      faker.date.dateTime(),
    ];
  });

  test('same formats', () {
    dates.forEach((date) {
      patterns.forEach((format, pattern) {
        final result = pattern.format(date);
        final expected = DateFormat(format, Intl.defaultLocale).format(date);

        expect(result, equals(expected));
      });
    });
  });
}
