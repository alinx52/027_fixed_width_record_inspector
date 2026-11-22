// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Fixed Width Record Inspector';

  @override
  String get appDescription =>
      'Preview field slices and find rows that do not match a fixed-width text layout entirely offline.';

  @override
  String get languageTooltip => 'Choose language';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get appearanceTooltip => 'Choose appearance';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Flat';

  @override
  String get appearanceSoft => 'Soft';

  @override
  String get recordTextLabel => 'Record text';

  @override
  String get recordTextHint => 'Paste or type fixed-width rows';

  @override
  String get fieldWidthsLabel => 'Field widths';

  @override
  String get fieldWidthsHint => 'For example: 3,5,4';

  @override
  String get inspectRecords => 'Inspect records';

  @override
  String get clearInput => 'Clear input';

  @override
  String get inspectionResult => 'Inspection result';

  @override
  String rows(int count) {
    return 'Rows: $count';
  }

  @override
  String expectedLength(int count) {
    return 'Expected length: $count';
  }

  @override
  String matchingRows(int count) {
    return 'Matching rows: $count';
  }

  @override
  String get allRowsMatch => 'All rows match';

  @override
  String get needsReview => 'Needs review';

  @override
  String get fieldPreview => 'First row preview';

  @override
  String fieldValue(int index, String value) {
    return 'Field $index: $value';
  }

  @override
  String get emptyValue => '(empty)';

  @override
  String overflowValue(String value) {
    return 'Overflow: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return 'Row $row · length $actual · $status';
  }

  @override
  String shortBy(int count) {
    return 'Short by $count';
  }

  @override
  String longBy(int count) {
    return 'Long by $count';
  }

  @override
  String moreMismatches(int count) {
    return '$count more mismatching rows';
  }

  @override
  String get recordRequired => 'Enter record text.';

  @override
  String get widthsRequired => 'Enter field widths.';

  @override
  String get widthsMalformed => 'Use comma-separated positive whole numbers.';

  @override
  String get widthCountInvalid => 'Enter between 1 and 50 field widths.';

  @override
  String get widthOutOfRange => 'Each field width must be from 1 to 1000.';

  @override
  String get widthTotalTooLarge => 'The total field width cannot exceed 10000.';

  @override
  String get tooManyRows => 'Record text cannot exceed 1000 rows.';

  @override
  String get textTooLarge => 'Record text cannot exceed 100000 characters.';

  @override
  String get helpTooltip => 'Help & Guide';

  @override
  String get helpTitle => 'Fixed Width Record Inspector Guide';

  @override
  String get helpProblemSolvedTitle => 'Problem Solved';

  @override
  String get helpProblemSolvedContent =>
      'Inspects fixed-width positional text records (banking, EDI, mainframe exports) against column widths offline, detecting length discrepancies and boundary shifts.';

  @override
  String get helpHowToUseTitle => 'How to Use';

  @override
  String get helpHowToUseContent =>
      'Paste fixed-width records, input comma-separated field widths (e.g. 10, 5, 20), and tap Inspect records to view parsed fields and anomalies.';

  @override
  String get helpReadingResultsTitle => 'Reading Results';

  @override
  String get helpReadingResultsContent =>
      'Shows expected line length, total lines, compliant lines, interactive field-by-field previews, and flags rows that are too short or long.';

  @override
  String get helpExampleTitle => 'Example';

  @override
  String get helpExampleContent =>
      'Widths: \"5, 10\" (Expected length = 15)\nRow: \"12345ABCDEFGHIJ\" -> Field 1: \"12345\", Field 2: \"ABCDEFGHIJ\" (Valid 15 chars).';

  @override
  String get helpLimitsTitle => 'Validation & Limitations';

  @override
  String get helpLimitsContent =>
      'Positional column boundary inspector only. Does not validate business logic, bank clearing formats, or character encoding variations (EBCDIC).';

  @override
  String get helpDataAndPrivacyTitle => 'Local Data & Ads';

  @override
  String get helpDataAndPrivacyContent =>
      'All record text is parsed in-memory on your device without file system access or external uploads. An AdMob banner is displayed below.';
}
