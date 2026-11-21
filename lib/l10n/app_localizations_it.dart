import 'app_localizations.dart';

class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt() : super('it');

  @override
  String get appTitle => 'Analizzatore di record a larghezza fissa';

  @override
  String get appDescription =>
      'Visualizza i campi e trova le righe non conformi al formato fisso, completamente offline.';

  @override
  String get languageTooltip => 'Scegli lingua';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get appearanceTooltip => 'Scegli aspetto';

  @override
  String get appearanceMaterial => 'Materiale';

  @override
  String get appearanceFlat => 'Piatto';

  @override
  String get appearanceSoft => 'Morbido';

  @override
  String get recordTextLabel => 'Testo dei record';

  @override
  String get recordTextHint => 'Incolla o digita righe a larghezza fissa';

  @override
  String get fieldWidthsLabel => 'Larghezze dei campi';

  @override
  String get fieldWidthsHint => 'Ad esempio: 3,5,4';

  @override
  String get inspectRecords => 'Analizza record';

  @override
  String get clearInput => 'Cancella input';

  @override
  String get inspectionResult => 'Risultato dell’analisi';

  @override
  String rows(int count) => 'Righe: $count';

  @override
  String expectedLength(int count) => 'Lunghezza prevista: $count';

  @override
  String matchingRows(int count) => 'Righe corrispondenti: $count';

  @override
  String get allRowsMatch => 'Tutte le righe corrispondono';

  @override
  String get needsReview => 'Da controllare';

  @override
  String get fieldPreview => 'Anteprima della prima riga';

  @override
  String fieldValue(int index, String value) => 'Campo $index: $value';

  @override
  String get emptyValue => '(vuoto)';

  @override
  String overflowValue(String value) => 'Eccedenza: $value';

  @override
  String mismatchRow(int row, int actual, String status) =>
      'Riga $row · lunghezza $actual · $status';

  @override
  String shortBy(int count) => 'Mancano $count';

  @override
  String longBy(int count) => 'Supera di $count';

  @override
  String moreMismatches(int count) => 'Altre $count righe non corrispondenti';

  @override
  String get recordRequired => 'Inserisci il testo dei record.';

  @override
  String get widthsRequired => 'Inserisci le larghezze dei campi.';

  @override
  String get widthsMalformed =>
      'Usa numeri interi positivi separati da virgole.';

  @override
  String get widthCountInvalid => 'Inserisci da 1 a 50 larghezze di campo.';

  @override
  String get widthOutOfRange =>
      'Ogni larghezza deve essere compresa tra 1 e 1000.';

  @override
  String get widthTotalTooLarge =>
      'La larghezza totale non può superare 10000.';

  @override
  String get tooManyRows => 'Il testo non può superare 1000 righe.';

  @override
  String get textTooLarge => 'Il testo non può superare 100000 caratteri.';
}
