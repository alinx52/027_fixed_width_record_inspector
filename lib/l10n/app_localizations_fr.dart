import 'app_localizations.dart';

class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr() : super('fr');

  @override
  String get appTitle => 'Inspecteur d’enregistrements à largeur fixe';

  @override
  String get appDescription =>
      'Prévisualisez les champs et trouvez les lignes non conformes à une disposition fixe, entièrement hors ligne.';

  @override
  String get languageTooltip => 'Choisir la langue';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get appearanceTooltip => 'Choisir l’apparence';

  @override
  String get appearanceMaterial => 'Matériel';

  @override
  String get appearanceFlat => 'Plate';

  @override
  String get appearanceSoft => 'Douce';

  @override
  String get recordTextLabel => 'Texte des enregistrements';

  @override
  String get recordTextHint => 'Collez ou saisissez des lignes à largeur fixe';

  @override
  String get fieldWidthsLabel => 'Largeurs des champs';

  @override
  String get fieldWidthsHint => 'Par exemple : 3,5,4';

  @override
  String get inspectRecords => 'Inspecter les enregistrements';

  @override
  String get clearInput => 'Effacer la saisie';

  @override
  String get inspectionResult => 'Résultat de l’inspection';

  @override
  String rows(int count) => 'Lignes : $count';

  @override
  String expectedLength(int count) => 'Longueur attendue : $count';

  @override
  String matchingRows(int count) => 'Lignes conformes : $count';

  @override
  String get allRowsMatch => 'Toutes les lignes sont conformes';

  @override
  String get needsReview => 'À vérifier';

  @override
  String get fieldPreview => 'Aperçu de la première ligne';

  @override
  String fieldValue(int index, String value) => 'Champ $index : $value';

  @override
  String get emptyValue => '(vide)';

  @override
  String overflowValue(String value) => 'Dépassement : $value';

  @override
  String mismatchRow(int row, int actual, String status) =>
      'Ligne $row · longueur $actual · $status';

  @override
  String shortBy(int count) => 'Il manque $count';

  @override
  String longBy(int count) => 'Dépasse de $count';

  @override
  String moreMismatches(int count) => '$count autres lignes non conformes';

  @override
  String get recordRequired => 'Saisissez le texte des enregistrements.';

  @override
  String get widthsRequired => 'Saisissez les largeurs des champs.';

  @override
  String get widthsMalformed =>
      'Utilisez des entiers positifs séparés par des virgules.';

  @override
  String get widthCountInvalid => 'Saisissez entre 1 et 50 largeurs de champ.';

  @override
  String get widthOutOfRange =>
      'Chaque largeur doit être comprise entre 1 et 1000.';

  @override
  String get widthTotalTooLarge =>
      'La largeur totale ne peut pas dépasser 10000.';

  @override
  String get tooManyRows => 'Le texte ne peut pas dépasser 1000 lignes.';

  @override
  String get textTooLarge => 'Le texte ne peut pas dépasser 100000 caractères.';
}
