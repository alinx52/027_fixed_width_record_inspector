import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('all required ARBs contain the complete message key set', () {
    const locales = <String>[
      'en',
      'ko',
      'ja',
      'zh_Hans',
      'zh_Hant',
      'es',
      'fr',
      'de',
      'pt_BR',
      'it',
      'nl',
      'ru',
      'ar',
      'hi',
      'id',
      'vi',
    ];
    final template = _messages('en');

    for (final locale in locales) {
      expect(
        _messages(locale),
        template,
        reason: 'app_$locale.arb must match the English message keys',
      );
    }
  });
}

Set<String> _messages(String locale) {
  final json = jsonDecode(
    File('lib/l10n/app_$locale.arb').readAsStringSync(),
  ) as Map<String, dynamic>;
  return json.keys.where((key) => !key.startsWith('@')).toSet();
}
