import 'app_localizations.dart';

class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl() : super('nl');

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
  String rows(int count) => 'Rijen: $count';

  @override
  String expectedLength(int count) => 'Verwachte lengte: $count';

  @override
  String matchingRows(int count) => 'Overeenkomende rijen: $count';

  @override
  String get allRowsMatch => 'Alle rijen komen overeen';

  @override
  String get needsReview => 'Controle nodig';

  @override
  String get fieldPreview => 'Voorbeeld van eerste rij';

  @override
  String fieldValue(int index, String value) => 'Veld $index: $value';

  @override
  String get emptyValue => '(leeg)';

  @override
  String overflowValue(String value) => 'Overschot: $value';

  @override
  String mismatchRow(int row, int actual, String status) =>
      'Rij $row · lengte $actual · $status';

  @override
  String shortBy(int count) => '$count te kort';

  @override
  String longBy(int count) => '$count te lang';

  @override
  String moreMismatches(int count) => 'Nog $count afwijkende rijen';

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
}
