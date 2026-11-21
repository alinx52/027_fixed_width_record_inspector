import 'app_localizations.dart';

class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn() : super('en');

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
  String rows(int count) => 'Rows: $count';

  @override
  String expectedLength(int count) => 'Expected length: $count';

  @override
  String matchingRows(int count) => 'Matching rows: $count';

  @override
  String get allRowsMatch => 'All rows match';

  @override
  String get needsReview => 'Needs review';

  @override
  String get fieldPreview => 'First row preview';

  @override
  String fieldValue(int index, String value) => 'Field $index: $value';

  @override
  String get emptyValue => '(empty)';

  @override
  String overflowValue(String value) => 'Overflow: $value';

  @override
  String mismatchRow(int row, int actual, String status) =>
      'Row $row · length $actual · $status';

  @override
  String shortBy(int count) => 'Short by $count';

  @override
  String longBy(int count) => 'Long by $count';

  @override
  String moreMismatches(int count) => '$count more mismatching rows';

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
}
