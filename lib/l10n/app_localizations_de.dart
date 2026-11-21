import 'app_localizations.dart';

class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe() : super('de');

  @override
  String get appTitle => 'Prüfer für Datensätze fester Breite';

  @override
  String get appDescription =>
      'Feldabschnitte offline anzeigen und Zeilen finden, die nicht zum Festbreitenlayout passen.';

  @override
  String get languageTooltip => 'Sprache wählen';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';

  @override
  String get appearanceTooltip => 'Darstellung wählen';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Flach';

  @override
  String get appearanceSoft => 'Weich';

  @override
  String get recordTextLabel => 'Datensatztext';

  @override
  String get recordTextHint => 'Zeilen fester Breite einfügen oder eingeben';

  @override
  String get fieldWidthsLabel => 'Feldbreiten';

  @override
  String get fieldWidthsHint => 'Zum Beispiel: 3,5,4';

  @override
  String get inspectRecords => 'Datensätze prüfen';

  @override
  String get clearInput => 'Eingabe löschen';

  @override
  String get inspectionResult => 'Prüfergebnis';

  @override
  String rows(int count) => 'Zeilen: $count';

  @override
  String expectedLength(int count) => 'Erwartete Länge: $count';

  @override
  String matchingRows(int count) => 'Passende Zeilen: $count';

  @override
  String get allRowsMatch => 'Alle Zeilen passen';

  @override
  String get needsReview => 'Prüfung erforderlich';

  @override
  String get fieldPreview => 'Vorschau der ersten Zeile';

  @override
  String fieldValue(int index, String value) => 'Feld $index: $value';

  @override
  String get emptyValue => '(leer)';

  @override
  String overflowValue(String value) => 'Überhang: $value';

  @override
  String mismatchRow(int row, int actual, String status) =>
      'Zeile $row · Länge $actual · $status';

  @override
  String shortBy(int count) => '$count zu kurz';

  @override
  String longBy(int count) => '$count zu lang';

  @override
  String moreMismatches(int count) => '$count weitere abweichende Zeilen';

  @override
  String get recordRequired => 'Datensatztext eingeben.';

  @override
  String get widthsRequired => 'Feldbreiten eingeben.';

  @override
  String get widthsMalformed =>
      'Durch Kommas getrennte positive Ganzzahlen verwenden.';

  @override
  String get widthCountInvalid => 'Zwischen 1 und 50 Feldbreiten eingeben.';

  @override
  String get widthOutOfRange =>
      'Jede Feldbreite muss zwischen 1 und 1000 liegen.';

  @override
  String get widthTotalTooLarge =>
      'Die Gesamtbreite darf 10000 nicht überschreiten.';

  @override
  String get tooManyRows =>
      'Der Datensatztext darf höchstens 1000 Zeilen haben.';

  @override
  String get textTooLarge =>
      'Der Datensatztext darf höchstens 100000 Zeichen haben.';
}
