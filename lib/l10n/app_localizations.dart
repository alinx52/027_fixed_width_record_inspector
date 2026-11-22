import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar'),
    Locale('de'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ru'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// Localized appTitle message.
  ///
  /// In en, this message translates to:
  /// **'Fixed Width Record Inspector'**
  String get appTitle;

  /// Localized appDescription message.
  ///
  /// In en, this message translates to:
  /// **'Preview field slices and find rows that do not match a fixed-width text layout entirely offline.'**
  String get appDescription;

  /// Localized languageTooltip message.
  ///
  /// In en, this message translates to:
  /// **'Choose language'**
  String get languageTooltip;

  /// Localized privacyPolicy message.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// Localized appearanceTooltip message.
  ///
  /// In en, this message translates to:
  /// **'Choose appearance'**
  String get appearanceTooltip;

  /// Localized appearanceMaterial message.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get appearanceMaterial;

  /// Localized appearanceFlat message.
  ///
  /// In en, this message translates to:
  /// **'Flat'**
  String get appearanceFlat;

  /// Localized appearanceSoft message.
  ///
  /// In en, this message translates to:
  /// **'Soft'**
  String get appearanceSoft;

  /// Localized recordTextLabel message.
  ///
  /// In en, this message translates to:
  /// **'Record text'**
  String get recordTextLabel;

  /// Localized recordTextHint message.
  ///
  /// In en, this message translates to:
  /// **'Paste or type fixed-width rows'**
  String get recordTextHint;

  /// Localized fieldWidthsLabel message.
  ///
  /// In en, this message translates to:
  /// **'Field widths'**
  String get fieldWidthsLabel;

  /// Localized fieldWidthsHint message.
  ///
  /// In en, this message translates to:
  /// **'For example: 3,5,4'**
  String get fieldWidthsHint;

  /// Localized inspectRecords message.
  ///
  /// In en, this message translates to:
  /// **'Inspect records'**
  String get inspectRecords;

  /// Localized clearInput message.
  ///
  /// In en, this message translates to:
  /// **'Clear input'**
  String get clearInput;

  /// Localized inspectionResult message.
  ///
  /// In en, this message translates to:
  /// **'Inspection result'**
  String get inspectionResult;

  /// Localized rows message.
  ///
  /// In en, this message translates to:
  /// **'Rows: {count}'**
  String rows(int count);

  /// Localized expectedLength message.
  ///
  /// In en, this message translates to:
  /// **'Expected length: {count}'**
  String expectedLength(int count);

  /// Localized matchingRows message.
  ///
  /// In en, this message translates to:
  /// **'Matching rows: {count}'**
  String matchingRows(int count);

  /// Localized allRowsMatch message.
  ///
  /// In en, this message translates to:
  /// **'All rows match'**
  String get allRowsMatch;

  /// Localized needsReview message.
  ///
  /// In en, this message translates to:
  /// **'Needs review'**
  String get needsReview;

  /// Localized fieldPreview message.
  ///
  /// In en, this message translates to:
  /// **'First row preview'**
  String get fieldPreview;

  /// Localized fieldValue message.
  ///
  /// In en, this message translates to:
  /// **'Field {index}: {value}'**
  String fieldValue(int index, String value);

  /// Localized emptyValue message.
  ///
  /// In en, this message translates to:
  /// **'(empty)'**
  String get emptyValue;

  /// Localized overflowValue message.
  ///
  /// In en, this message translates to:
  /// **'Overflow: {value}'**
  String overflowValue(String value);

  /// Localized mismatchRow message.
  ///
  /// In en, this message translates to:
  /// **'Row {row} · length {actual} · {status}'**
  String mismatchRow(int row, int actual, String status);

  /// Localized shortBy message.
  ///
  /// In en, this message translates to:
  /// **'Short by {count}'**
  String shortBy(int count);

  /// Localized longBy message.
  ///
  /// In en, this message translates to:
  /// **'Long by {count}'**
  String longBy(int count);

  /// Localized moreMismatches message.
  ///
  /// In en, this message translates to:
  /// **'{count} more mismatching rows'**
  String moreMismatches(int count);

  /// Localized recordRequired message.
  ///
  /// In en, this message translates to:
  /// **'Enter record text.'**
  String get recordRequired;

  /// Localized widthsRequired message.
  ///
  /// In en, this message translates to:
  /// **'Enter field widths.'**
  String get widthsRequired;

  /// Localized widthsMalformed message.
  ///
  /// In en, this message translates to:
  /// **'Use comma-separated positive whole numbers.'**
  String get widthsMalformed;

  /// Localized widthCountInvalid message.
  ///
  /// In en, this message translates to:
  /// **'Enter between 1 and 50 field widths.'**
  String get widthCountInvalid;

  /// Localized widthOutOfRange message.
  ///
  /// In en, this message translates to:
  /// **'Each field width must be from 1 to 1000.'**
  String get widthOutOfRange;

  /// Localized widthTotalTooLarge message.
  ///
  /// In en, this message translates to:
  /// **'The total field width cannot exceed 10000.'**
  String get widthTotalTooLarge;

  /// Localized tooManyRows message.
  ///
  /// In en, this message translates to:
  /// **'Record text cannot exceed 1000 rows.'**
  String get tooManyRows;

  /// Localized textTooLarge message.
  ///
  /// In en, this message translates to:
  /// **'Record text cannot exceed 100000 characters.'**
  String get textTooLarge;

  /// No description provided for @helpTooltip.
  ///
  /// In en, this message translates to:
  /// **'Help & Guide'**
  String get helpTooltip;

  /// No description provided for @helpTitle.
  ///
  /// In en, this message translates to:
  /// **'Fixed Width Record Inspector Guide'**
  String get helpTitle;

  /// No description provided for @helpProblemSolvedTitle.
  ///
  /// In en, this message translates to:
  /// **'Problem Solved'**
  String get helpProblemSolvedTitle;

  /// No description provided for @helpProblemSolvedContent.
  ///
  /// In en, this message translates to:
  /// **'Inspects fixed-width positional text records (banking, EDI, mainframe exports) against column widths offline, detecting length discrepancies and boundary shifts.'**
  String get helpProblemSolvedContent;

  /// No description provided for @helpHowToUseTitle.
  ///
  /// In en, this message translates to:
  /// **'How to Use'**
  String get helpHowToUseTitle;

  /// No description provided for @helpHowToUseContent.
  ///
  /// In en, this message translates to:
  /// **'Paste fixed-width records, input comma-separated field widths (e.g. 10, 5, 20), and tap Inspect records to view parsed fields and anomalies.'**
  String get helpHowToUseContent;

  /// No description provided for @helpReadingResultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reading Results'**
  String get helpReadingResultsTitle;

  /// No description provided for @helpReadingResultsContent.
  ///
  /// In en, this message translates to:
  /// **'Shows expected line length, total lines, compliant lines, interactive field-by-field previews, and flags rows that are too short or long.'**
  String get helpReadingResultsContent;

  /// No description provided for @helpExampleTitle.
  ///
  /// In en, this message translates to:
  /// **'Example'**
  String get helpExampleTitle;

  /// No description provided for @helpExampleContent.
  ///
  /// In en, this message translates to:
  /// **'Widths: \"5, 10\" (Expected length = 15)\nRow: \"12345ABCDEFGHIJ\" -> Field 1: \"12345\", Field 2: \"ABCDEFGHIJ\" (Valid 15 chars).'**
  String get helpExampleContent;

  /// No description provided for @helpLimitsTitle.
  ///
  /// In en, this message translates to:
  /// **'Validation & Limitations'**
  String get helpLimitsTitle;

  /// No description provided for @helpLimitsContent.
  ///
  /// In en, this message translates to:
  /// **'Positional column boundary inspector only. Does not validate business logic, bank clearing formats, or character encoding variations (EBCDIC).'**
  String get helpLimitsContent;

  /// No description provided for @helpDataAndPrivacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Local Data & Ads'**
  String get helpDataAndPrivacyTitle;

  /// No description provided for @helpDataAndPrivacyContent.
  ///
  /// In en, this message translates to:
  /// **'All record text is parsed in-memory on your device without file system access or external uploads. An AdMob banner is displayed below.'**
  String get helpDataAndPrivacyContent;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pt',
    'ru',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hans':
            return AppLocalizationsZhHans();
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
