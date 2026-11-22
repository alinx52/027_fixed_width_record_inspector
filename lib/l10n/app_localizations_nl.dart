// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Inspecteur voor records met vaste breedte';

  @override
  String get appDescription =>
      'Bekijk veldsegmenten en vind offline rijen die niet aan de vaste indeling voldoen.';

  @override
  String get languageTooltip => 'Taal kiezen';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get appearanceTooltip => 'Weergave kiezen';

  @override
  String get appearanceMaterial => 'Materiaal';

  @override
  String get appearanceFlat => 'Vlak';

  @override
  String get appearanceSoft => 'Zacht';

  @override
  String get recordTextLabel => 'Recordtekst';

  @override
  String get recordTextHint => 'Plak of typ rijen met vaste breedte';

  @override
  String get fieldWidthsLabel => 'Veldbreedtes';

  @override
  String get fieldWidthsHint => 'Bijvoorbeeld: 3,5,4';

  @override
  String get inspectRecords => 'Records inspecteren';

  @override
  String get clearInput => 'Invoer wissen';

  @override
  String get inspectionResult => 'Inspectieresultaat';

  @override
  String rows(int count) {
    return 'Rijen: $count';
  }

  @override
  String expectedLength(int count) {
    return 'Verwachte lengte: $count';
  }

  @override
  String matchingRows(int count) {
    return 'Overeenkomende rijen: $count';
  }

  @override
  String get allRowsMatch => 'Alle rijen komen overeen';

  @override
  String get needsReview => 'Controle nodig';

  @override
  String get fieldPreview => 'Voorbeeld van eerste rij';

  @override
  String fieldValue(int index, String value) {
    return 'Veld $index: $value';
  }

  @override
  String get emptyValue => '(leeg)';

  @override
  String overflowValue(String value) {
    return 'Overschot: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return 'Rij $row · lengte $actual · $status';
  }

  @override
  String shortBy(int count) {
    return '$count te kort';
  }

  @override
  String longBy(int count) {
    return '$count te lang';
  }

  @override
  String moreMismatches(int count) {
    return 'Nog $count afwijkende rijen';
  }

  @override
  String get recordRequired => 'Voer recordtekst in.';

  @override
  String get widthsRequired => 'Voer veldbreedtes in.';

  @override
  String get widthsMalformed =>
      'Gebruik positieve gehele getallen, gescheiden door komma’s.';

  @override
  String get widthCountInvalid => 'Voer 1 tot 50 veldbreedtes in.';

  @override
  String get widthOutOfRange =>
      'Elke veldbreedte moet tussen 1 en 1000 liggen.';

  @override
  String get widthTotalTooLarge =>
      'De totale veldbreedte mag niet groter zijn dan 10000.';

  @override
  String get tooManyRows =>
      'Recordtekst mag niet meer dan 1000 rijen bevatten.';

  @override
  String get textTooLarge =>
      'Recordtekst mag niet meer dan 100000 tekens bevatten.';

  @override
  String get helpTooltip => 'Hulp en gids';

  @override
  String get helpTitle => 'Gids voor vaste-breedterecordinspectie';

  @override
  String get helpProblemSolvedTitle => 'Opgelost probleem';

  @override
  String get helpProblemSolvedContent =>
      'Inspecteert vaste-breedterecords (bankgegevens, EDI) op basis van kolombreedtes en detecteert afwijkingen in regelengte.';

  @override
  String get helpHowToUseTitle => 'Gebruiksaanwijzing';

  @override
  String get helpHowToUseContent =>
      'Plak vaste-breedterecords, voer veldbreedtes in gescheiden door komma\'s (bijv. 10, 5, 20) en tik op Inspecteren.';

  @override
  String get helpReadingResultsTitle => 'Resultaten aflezen';

  @override
  String get helpReadingResultsContent =>
      'Toont verwachte regellengte, totale regels, conforme regels, veld-voor-veldweergave en signaleert te korte/lange regels.';

  @override
  String get helpExampleTitle => 'Voorbeeld';

  @override
  String get helpExampleContent =>
      'Breedtes: \"5, 10\" (Verwachte lengte = 15)\nRegel: \"12345ABCDEFGHIJ\" -> Veld 1: \"12345\", Veld 2: \"ABCDEFGHIJ\" (Geldig 15 tekens).';

  @override
  String get helpLimitsTitle => 'Validatie & Beperkingen';

  @override
  String get helpLimitsContent =>
      'Positioneel kolomgrenzenhulpmiddel. Valideert geen bedrijfslogica, bankstandaarden of EBCDIC-coderingen.';

  @override
  String get helpDataAndPrivacyTitle => 'Lokale gegevens & Advertenties';

  @override
  String get helpDataAndPrivacyContent =>
      'Alle records worden in het geheugen verwerkt zonder bestandstoegang of upload. Onderaan staat een AdMob-banner.';
}
