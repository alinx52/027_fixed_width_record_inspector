// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Инспектор записей фиксированной ширины';

  @override
  String get appDescription =>
      'Просматривайте поля и находите строки, не соответствующие фиксированной разметке, полностью офлайн.';

  @override
  String get languageTooltip => 'Выбрать язык';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get appearanceTooltip => 'Выбрать оформление';

  @override
  String get appearanceMaterial => 'Материальный';

  @override
  String get appearanceFlat => 'Плоский';

  @override
  String get appearanceSoft => 'Мягкий';

  @override
  String get recordTextLabel => 'Текст записей';

  @override
  String get recordTextHint =>
      'Вставьте или введите строки фиксированной ширины';

  @override
  String get fieldWidthsLabel => 'Ширина полей';

  @override
  String get fieldWidthsHint => 'Например: 3,5,4';

  @override
  String get inspectRecords => 'Проверить записи';

  @override
  String get clearInput => 'Очистить ввод';

  @override
  String get inspectionResult => 'Результат проверки';

  @override
  String rows(int count) {
    return 'Строки: $count';
  }

  @override
  String expectedLength(int count) {
    return 'Ожидаемая длина: $count';
  }

  @override
  String matchingRows(int count) {
    return 'Совпавшие строки: $count';
  }

  @override
  String get allRowsMatch => 'Все строки совпадают';

  @override
  String get needsReview => 'Требуется проверка';

  @override
  String get fieldPreview => 'Предпросмотр первой строки';

  @override
  String fieldValue(int index, String value) {
    return 'Поле $index: $value';
  }

  @override
  String get emptyValue => '(пусто)';

  @override
  String overflowValue(String value) {
    return 'Остаток: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return 'Строка $row · длина $actual · $status';
  }

  @override
  String shortBy(int count) {
    return 'Не хватает $count';
  }

  @override
  String longBy(int count) {
    return 'Лишних $count';
  }

  @override
  String moreMismatches(int count) {
    return 'Ещё $count несовпадающих строк';
  }

  @override
  String get recordRequired => 'Введите текст записей.';

  @override
  String get widthsRequired => 'Введите ширину полей.';

  @override
  String get widthsMalformed =>
      'Используйте положительные целые числа через запятую.';

  @override
  String get widthCountInvalid => 'Введите от 1 до 50 значений ширины.';

  @override
  String get widthOutOfRange => 'Ширина каждого поля должна быть от 1 до 1000.';

  @override
  String get widthTotalTooLarge => 'Общая ширина не может превышать 10000.';

  @override
  String get tooManyRows => 'Текст не может содержать более 1000 строк.';

  @override
  String get textTooLarge => 'Текст не может превышать 100000 символов.';

  @override
  String get helpTooltip => 'Справка и руководство';

  @override
  String get helpTitle =>
      'Руководство по инспектору записей фиксированной ширины';

  @override
  String get helpProblemSolvedTitle => 'Решаемая задача';

  @override
  String get helpProblemSolvedContent =>
      'Проверяет позиционные записи фиксированной ширины (банковские выгрузки, EDI) на соответствие колонкам и расхождения в длине.';

  @override
  String get helpHowToUseTitle => 'Как использовать';

  @override
  String get helpHowToUseContent =>
      'Вставьте записи фиксированной ширины, введите ширину полей через запятую (напр. 10, 5, 20) и нажмите «Проверить записи».';

  @override
  String get helpReadingResultsTitle => 'Чтение результатов';

  @override
  String get helpReadingResultsContent =>
      'Отображает ожидаемую длину строки, общее число строк, корректные строки, превью полей и строки с неверной длиной.';

  @override
  String get helpExampleTitle => 'Пример';

  @override
  String get helpExampleContent =>
      'Ширина: \"5, 10\" (Ожидаемая длина = 15)\nСтрока: \"12345ABCDEFGHIJ\" -> Поле 1: \"12345\", Поле 2: \"ABCDEFGHIJ\" (Верно 15 символов).';

  @override
  String get helpLimitsTitle => 'Проверка и ограничения';

  @override
  String get helpLimitsContent =>
      'Инструмент позиционной проверки колонок. Не проверяет бизнес-логику, форматы межбанковского обмена и кодировки (EBCDIC).';

  @override
  String get helpDataAndPrivacyTitle => 'Локальные данные и реклама';

  @override
  String get helpDataAndPrivacyContent =>
      'Все записи анализируются в памяти устройства без доступа к файлам и отправки на серверы. Внизу отображается баннер AdMob.';
}
