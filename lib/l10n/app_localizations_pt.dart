// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Inspetor de registros de largura fixa';

  @override
  String get appDescription =>
      'Visualize campos e encontre linhas fora do formato de largura fixa, totalmente offline.';

  @override
  String get languageTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plana';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get recordTextLabel => 'Texto dos registros';

  @override
  String get recordTextHint => 'Cole ou digite linhas de largura fixa';

  @override
  String get fieldWidthsLabel => 'Larguras dos campos';

  @override
  String get fieldWidthsHint => 'Por exemplo: 3,5,4';

  @override
  String get inspectRecords => 'Inspecionar registros';

  @override
  String get clearInput => 'Limpar entrada';

  @override
  String get inspectionResult => 'Resultado da inspeção';

  @override
  String rows(int count) {
    return 'Linhas: $count';
  }

  @override
  String expectedLength(int count) {
    return 'Comprimento esperado: $count';
  }

  @override
  String matchingRows(int count) {
    return 'Linhas correspondentes: $count';
  }

  @override
  String get allRowsMatch => 'Todas as linhas correspondem';

  @override
  String get needsReview => 'Precisa de revisão';

  @override
  String get fieldPreview => 'Prévia da primeira linha';

  @override
  String fieldValue(int index, String value) {
    return 'Campo $index: $value';
  }

  @override
  String get emptyValue => '(vazio)';

  @override
  String overflowValue(String value) {
    return 'Excedente: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return 'Linha $row · comprimento $actual · $status';
  }

  @override
  String shortBy(int count) {
    return 'Faltam $count';
  }

  @override
  String longBy(int count) {
    return 'Sobram $count';
  }

  @override
  String moreMismatches(int count) {
    return 'Mais $count linhas divergentes';
  }

  @override
  String get recordRequired => 'Digite o texto dos registros.';

  @override
  String get widthsRequired => 'Digite as larguras dos campos.';

  @override
  String get widthsMalformed =>
      'Use números inteiros positivos separados por vírgulas.';

  @override
  String get widthCountInvalid => 'Digite entre 1 e 50 larguras de campo.';

  @override
  String get widthOutOfRange => 'Cada largura deve estar entre 1 e 1000.';

  @override
  String get widthTotalTooLarge => 'A largura total não pode exceder 10000.';

  @override
  String get tooManyRows => 'O texto não pode exceder 1000 linhas.';

  @override
  String get textTooLarge => 'O texto não pode exceder 100000 caracteres.';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Inspetor de registros de largura fixa';

  @override
  String get appDescription =>
      'Visualize campos e encontre linhas fora do formato de largura fixa, totalmente offline.';

  @override
  String get languageTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plana';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get recordTextLabel => 'Texto dos registros';

  @override
  String get recordTextHint => 'Cole ou digite linhas de largura fixa';

  @override
  String get fieldWidthsLabel => 'Larguras dos campos';

  @override
  String get fieldWidthsHint => 'Por exemplo: 3,5,4';

  @override
  String get inspectRecords => 'Inspecionar registros';

  @override
  String get clearInput => 'Limpar entrada';

  @override
  String get inspectionResult => 'Resultado da inspeção';

  @override
  String rows(int count) {
    return 'Linhas: $count';
  }

  @override
  String expectedLength(int count) {
    return 'Comprimento esperado: $count';
  }

  @override
  String matchingRows(int count) {
    return 'Linhas correspondentes: $count';
  }

  @override
  String get allRowsMatch => 'Todas as linhas correspondem';

  @override
  String get needsReview => 'Precisa de revisão';

  @override
  String get fieldPreview => 'Prévia da primeira linha';

  @override
  String fieldValue(int index, String value) {
    return 'Campo $index: $value';
  }

  @override
  String get emptyValue => '(vazio)';

  @override
  String overflowValue(String value) {
    return 'Excedente: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return 'Linha $row · comprimento $actual · $status';
  }

  @override
  String shortBy(int count) {
    return 'Faltam $count';
  }

  @override
  String longBy(int count) {
    return 'Sobram $count';
  }

  @override
  String moreMismatches(int count) {
    return 'Mais $count linhas divergentes';
  }

  @override
  String get recordRequired => 'Digite o texto dos registros.';

  @override
  String get widthsRequired => 'Digite as larguras dos campos.';

  @override
  String get widthsMalformed =>
      'Use números inteiros positivos separados por vírgulas.';

  @override
  String get widthCountInvalid => 'Digite entre 1 e 50 larguras de campo.';

  @override
  String get widthOutOfRange => 'Cada largura deve estar entre 1 e 1000.';

  @override
  String get widthTotalTooLarge => 'A largura total não pode exceder 10000.';

  @override
  String get tooManyRows => 'O texto não pode exceder 1000 linhas.';

  @override
  String get textTooLarge => 'O texto não pode exceder 100000 caracteres.';
}
