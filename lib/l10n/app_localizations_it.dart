// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

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
  String rows(int count) {
    return 'Righe: $count';
  }

  @override
  String expectedLength(int count) {
    return 'Lunghezza prevista: $count';
  }

  @override
  String matchingRows(int count) {
    return 'Righe corrispondenti: $count';
  }

  @override
  String get allRowsMatch => 'Tutte le righe corrispondono';

  @override
  String get needsReview => 'Da controllare';

  @override
  String get fieldPreview => 'Anteprima della prima riga';

  @override
  String fieldValue(int index, String value) {
    return 'Campo $index: $value';
  }

  @override
  String get emptyValue => '(vuoto)';

  @override
  String overflowValue(String value) {
    return 'Eccedenza: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return 'Riga $row · lunghezza $actual · $status';
  }

  @override
  String shortBy(int count) {
    return 'Mancano $count';
  }

  @override
  String longBy(int count) {
    return 'Supera di $count';
  }

  @override
  String moreMismatches(int count) {
    return 'Altre $count righe non corrispondenti';
  }

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

  @override
  String get helpTooltip => 'Guida e aiuto';

  @override
  String get helpTitle => 'Guida all\'ispettore record a larghezza fissa';

  @override
  String get helpProblemSolvedTitle => 'Problema risolto';

  @override
  String get helpProblemSolvedContent =>
      'Ispeziona record di testo a larghezza fissa (bancari, EDI) in base alle larghezze definite, rilevando anomalie di lunghezza.';

  @override
  String get helpHowToUseTitle => 'Come usare';

  @override
  String get helpHowToUseContent =>
      'Incolla i record a larghezza fissa, inserisci le larghezze dei campi separate da virgola (es. 10, 5, 20) e tocca Ispeziona record.';

  @override
  String get helpReadingResultsTitle => 'Lettura dei risultati';

  @override
  String get helpReadingResultsContent =>
      'Mostra lunghezza attesa, totale righe, righe conformi, anteprima campo per campo e segnala righe troppo corte o lunghe.';

  @override
  String get helpExampleTitle => 'Esempio';

  @override
  String get helpExampleContent =>
      'Larghezze: \"5, 10\" (Lunghezza attesa = 15)\nRiga: \"12345ABCDEFGHIJ\" -> Campo 1: \"12345\", Campo 2: \"ABCDEFGHIJ\" (Validi 15 caratteri).';

  @override
  String get helpLimitsTitle => 'Validazione e limitazioni';

  @override
  String get helpLimitsContent =>
      'Ispettore di delimitazione posizionale delle colonne. Non convalida logiche di business, formati bancari o codifiche EBCDIC.';

  @override
  String get helpDataAndPrivacyTitle => 'Dati locali e annunci';

  @override
  String get helpDataAndPrivacyContent =>
      'Tutti i record sono analizzati in memoria senza accesso al file system né caricamenti. È visualizzato un banner AdMob standard.';
}
