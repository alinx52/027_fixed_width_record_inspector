import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_localizations_en.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_de.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_it.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_vi.dart';

abstract class AppLocalizations {
  const AppLocalizations(this.localeName);

  final String localeName;

  static AppLocalizations of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations)!;

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ko'),
    Locale('ja'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    Locale('es'),
    Locale('fr'),
    Locale('de'),
    Locale('pt', 'BR'),
    Locale('it'),
    Locale('nl'),
    Locale('ru'),
    Locale('ar'),
    Locale('hi'),
    Locale('id'),
    Locale('vi'),
  ];

  String get appTitle;
  String get appDescription;
  String get languageTooltip;
  String get privacyPolicy;
  String get appearanceTooltip;
  String get appearanceMaterial;
  String get appearanceFlat;
  String get appearanceSoft;
  String get recordTextLabel;
  String get recordTextHint;
  String get fieldWidthsLabel;
  String get fieldWidthsHint;
  String get inspectRecords;
  String get clearInput;
  String get inspectionResult;
  String rows(int count);
  String expectedLength(int count);
  String matchingRows(int count);
  String get allRowsMatch;
  String get needsReview;
  String get fieldPreview;
  String fieldValue(int index, String value);
  String get emptyValue;
  String overflowValue(String value);
  String mismatchRow(int row, int actual, String status);
  String shortBy(int count);
  String longBy(int count);
  String moreMismatches(int count);
  String get recordRequired;
  String get widthsRequired;
  String get widthsMalformed;
  String get widthCountInvalid;
  String get widthOutOfRange;
  String get widthTotalTooLarge;
  String get tooManyRows;
  String get textTooLarge;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) =>
      SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));

  @override
  bool isSupported(Locale locale) => AppLocalizations.supportedLocales.any(
    (supported) => supported.toLanguageTag() == locale.toLanguageTag(),
  );

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  final tag = locale.toLanguageTag();
  return switch (tag) {
    'en' => AppLocalizationsEn(),
    'ko' => AppLocalizationsKo(),
    'ja' => AppLocalizationsJa(),
    'zh-Hans' => AppLocalizationsZhHans(),
    'zh-Hant' => AppLocalizationsZhHant(),
    'es' => AppLocalizationsEs(),
    'fr' => AppLocalizationsFr(),
    'de' => AppLocalizationsDe(),
    'pt-BR' => AppLocalizationsPtBR(),
    'it' => AppLocalizationsIt(),
    'nl' => AppLocalizationsNl(),
    'ru' => AppLocalizationsRu(),
    'ar' => AppLocalizationsAr(),
    'hi' => AppLocalizationsHi(),
    'id' => AppLocalizationsId(),
    'vi' => AppLocalizationsVi(),
    _ => throw FlutterError('Unsupported locale: $locale'),
  };
}
