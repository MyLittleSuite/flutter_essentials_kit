import 'package:intl/intl.dart';

/// A collection of ready common date formats.
extension DateFormats on DateFormat {
  /// Format: dd-MM-yyyy
  static DateFormat dash_ddMMyyyy([locale]) => DateFormat('dd-MM-yyyy', locale);

  /// Format: yyyy-MM-dd'T'HH:mm:ssZZZZZ
  static DateFormat dash_yyyyMMddT_column_HHmmssZZZZZ([locale]) =>
      DateFormat("yyyy-MM-dd'T'HH:mm:ssZZZZZ", locale);

  /// Format: yyyy-MM-dd
  static DateFormat dash_yyyyMMdd([locale]) => DateFormat("yyyy-MM-dd", locale);

  /// Format: yyyy-MM-dd HH:mm:ss
  static DateFormat dash_yyyyMMdd_column_HHmmss([locale]) =>
      DateFormat("yyyy-MM-dd HH:mm:ss", locale);

  /// Format: yyyyMMdd
  static DateFormat yyyyMMdd([locale]) => DateFormat("yyyyMMdd", locale);

  /// Format: dd MMMM yyyy
  static DateFormat spacing_ddMMMMyyyy([locale]) =>
      DateFormat("dd MMMM yyyy", locale);

  /// Format: EEEE dd MMM yyyy
  static DateFormat spacing_EEEEddMMMyyyy([locale]) =>
      DateFormat("EEEE dd MMM yyyy", locale);

  /// Format: EEEE dd MMMM yyyy
  static DateFormat spacing_EEEEddMMMMyyyy([locale]) =>
      DateFormat("EEEE dd MMMM yyyy", locale);

  /// Format: EE
  static DateFormat EE([locale]) => DateFormat("EE", locale);

  /// Format: EEE
  static DateFormat EEE([locale]) => DateFormat("EEE", locale);

  /// Format: dd
  static DateFormat dd([locale]) => DateFormat("dd", locale);

  /// Format: yyyy
  static DateFormat yyyy([locale]) => DateFormat("yyyy", locale);

  /// Format: MMMM yyyy
  static DateFormat spacing_MMMMyyyy([locale]) =>
      DateFormat("MMMM yyyy", locale);

  /// Format: dd/MM
  static DateFormat slash_ddMM([locale]) => DateFormat("dd/MM", locale);

  /// Format: dd/MM/yyyy
  static DateFormat slash_ddMMyyyy([locale]) =>
      DateFormat("dd/MM/yyyy", locale);

  /// Format: dd/MM/yyyy HH:mm
  static DateFormat slash_ddMMyyyy_column_HHmm([locale]) =>
      DateFormat("dd/MM/yyyy HH:mm", locale);

  /// Format: dd/MM/yyyy h:mm
  static DateFormat slash_ddMMyyyy_column_hmm([locale]) =>
      DateFormat("dd/MM/yyyy h:mm", locale);

  /// Format: MM/dd/yyyy HH:mm
  static DateFormat slash_MMddyyyy_column_HHmm([locale]) =>
      DateFormat("MM/dd/yyyy HH:mm", locale);

  /// Format: MM/dd/yyyy h:mm
  static DateFormat slash_MMddyyyy_column_hmm([locale]) =>
      DateFormat("MM/dd/yyyy h:mm", locale);

  /// Format: HH:mm
  static DateFormat column_HHmm([locale]) => DateFormat("HH:mm", locale);

  /// Format: HH:mm:ss
  static DateFormat column_HHmmss([locale]) => DateFormat("HH:mm:ss", locale);

  /// Format: h:mm
  static DateFormat column_hmm([locale]) => DateFormat("h:mm", locale);
}
