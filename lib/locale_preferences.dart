import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLocalePreferences {
  AppLocalePreferences._();

  static const _localeKey = 'app.locale';

  static Locale? parseLocaleTag(String? tag) {
    if (tag == null || tag.isEmpty) {
      return null;
    }

    final parts = tag.split('-');
    if (parts.isEmpty || parts.first.isEmpty) {
      return null;
    }
    final languageCode = parts.first;
    String? scriptCode;
    String? countryCode;
    for (final part in parts.skip(1)) {
      if (part.length == 4 && scriptCode == null) {
        scriptCode = part;
      } else if ((part.length == 2 || part.length == 3) &&
          countryCode == null) {
        countryCode = part;
      }
    }
    return Locale.fromSubtags(
      languageCode: languageCode,
      scriptCode: scriptCode,
      countryCode: countryCode,
    );
  }

  static Future<Locale?> load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return parseLocaleTag(prefs.getString(_localeKey));
    } catch (_) {
      return null;
    }
  }

  static Future<void> save(Locale locale) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_localeKey, locale.toLanguageTag());
    } catch (_) {}
  }
}
