// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

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
  String rows(int count) {
    return 'Lignes : $count';
  }

  @override
  String expectedLength(int count) {
    return 'Longueur attendue : $count';
  }

  @override
  String matchingRows(int count) {
    return 'Lignes conformes : $count';
  }

  @override
  String get allRowsMatch => 'Toutes les lignes sont conformes';

  @override
  String get needsReview => 'À vérifier';

  @override
  String get fieldPreview => 'Aperçu de la première ligne';

  @override
  String fieldValue(int index, String value) {
    return 'Champ $index : $value';
  }

  @override
  String get emptyValue => '(vide)';

  @override
  String overflowValue(String value) {
    return 'Dépassement : $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return 'Ligne $row · longueur $actual · $status';
  }

  @override
  String shortBy(int count) {
    return 'Il manque $count';
  }

  @override
  String longBy(int count) {
    return 'Dépasse de $count';
  }

  @override
  String moreMismatches(int count) {
    return '$count autres lignes non conformes';
  }

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

  @override
  String get helpTooltip => 'Aide et guide';

  @override
  String get helpTitle =>
      'Guide de l\'inspecteur d\'enregistrements à largeur fixe';

  @override
  String get helpProblemSolvedTitle => 'Problème résolu';

  @override
  String get helpProblemSolvedContent =>
      'Inspecte les enregistrements à largeur fixe (EDI, bancaires) selon les largeurs de colonnes, détectant les écarts de longueur.';

  @override
  String get helpHowToUseTitle => 'Mode d\'emploi';

  @override
  String get helpHowToUseContent =>
      'Collez les enregistrements, saisissez les largeurs séparées par des virgules (ex. 10, 5, 20) et appuyez sur Inspecter.';

  @override
  String get helpReadingResultsTitle => 'Lecture des résultats';

  @override
  String get helpReadingResultsContent =>
      'Affiche la longueur attendue, le total de lignes, les lignes conformes, l\'aperçu par champ et signale les lignes non conformes.';

  @override
  String get helpExampleTitle => 'Exemple';

  @override
  String get helpExampleContent =>
      'Largeurs : \"5, 10\" (Longueur attendue = 15)\nLigne : \"12345ABCDEFGHIJ\" -> Champ 1 : \"12345\", Champ 2 : \"ABCDEFGHIJ\" (15 car. valide).';

  @override
  String get helpLimitsTitle => 'Validations et limites';

  @override
  String get helpLimitsContent =>
      'Outil de vérification positionnelle de colonnes. Ne valide pas la logique métier, les formats bancaires ni les encodages EBCDIC.';

  @override
  String get helpDataAndPrivacyTitle => 'Données locales et publicités';

  @override
  String get helpDataAndPrivacyContent =>
      'Tous les enregistrements sont analysés en mémoire sans accès aux fichiers ni téléversement. Une bannière AdMob est affichée en bas.';
}
