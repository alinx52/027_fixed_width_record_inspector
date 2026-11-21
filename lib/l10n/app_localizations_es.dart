// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Inspector de registros de ancho fijo';

  @override
  String get appDescription =>
      'Previsualiza campos y detecta filas que no coinciden con un diseño de ancho fijo, sin conexión.';

  @override
  String get languageTooltip => 'Elegir idioma';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get appearanceTooltip => 'Elegir apariencia';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plana';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get recordTextLabel => 'Texto de registros';

  @override
  String get recordTextHint => 'Pega o escribe filas de ancho fijo';

  @override
  String get fieldWidthsLabel => 'Anchos de campo';

  @override
  String get fieldWidthsHint => 'Por ejemplo: 3,5,4';

  @override
  String get inspectRecords => 'Inspeccionar registros';

  @override
  String get clearInput => 'Borrar entrada';

  @override
  String get inspectionResult => 'Resultado de la inspección';

  @override
  String rows(int count) {
    return 'Filas: $count';
  }

  @override
  String expectedLength(int count) {
    return 'Longitud esperada: $count';
  }

  @override
  String matchingRows(int count) {
    return 'Filas coincidentes: $count';
  }

  @override
  String get allRowsMatch => 'Todas las filas coinciden';

  @override
  String get needsReview => 'Requiere revisión';

  @override
  String get fieldPreview => 'Vista previa de la primera fila';

  @override
  String fieldValue(int index, String value) {
    return 'Campo $index: $value';
  }

  @override
  String get emptyValue => '(vacío)';

  @override
  String overflowValue(String value) {
    return 'Excedente: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return 'Fila $row · longitud $actual · $status';
  }

  @override
  String shortBy(int count) {
    return 'Faltan $count';
  }

  @override
  String longBy(int count) {
    return 'Sobran $count';
  }

  @override
  String moreMismatches(int count) {
    return '$count filas no coincidentes más';
  }

  @override
  String get recordRequired => 'Introduce el texto de los registros.';

  @override
  String get widthsRequired => 'Introduce los anchos de campo.';

  @override
  String get widthsMalformed => 'Usa enteros positivos separados por comas.';

  @override
  String get widthCountInvalid => 'Introduce entre 1 y 50 anchos de campo.';

  @override
  String get widthOutOfRange => 'Cada ancho debe estar entre 1 y 1000.';

  @override
  String get widthTotalTooLarge => 'El ancho total no puede superar 10000.';

  @override
  String get tooManyRows => 'El texto no puede superar 1000 filas.';

  @override
  String get textTooLarge => 'El texto no puede superar 100000 caracteres.';
}
