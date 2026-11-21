// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Fixed Width Record Inspector';

  @override
  String get appDescription =>
      'Preview field slices and find rows that do not match a fixed-width text layout entirely offline.';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageKorean => '한국어';

  @override
  String get privacyPolicy => '개인정보처리방침';
}
