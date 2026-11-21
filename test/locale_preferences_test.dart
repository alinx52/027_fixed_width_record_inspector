import 'package:fixed_width_record_inspector/locale_preferences.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('parses persisted language, script, and region locale tags', () {
    expect(AppLocalePreferences.parseLocaleTag('ko')?.toLanguageTag(), 'ko');
    expect(
      AppLocalePreferences.parseLocaleTag('zh-Hans')?.toLanguageTag(),
      'zh-Hans',
    );
    expect(
      AppLocalePreferences.parseLocaleTag('pt-BR')?.toLanguageTag(),
      'pt-BR',
    );
  });

  test('returns null for a missing saved locale', () {
    expect(AppLocalePreferences.parseLocaleTag(null), isNull);
    expect(AppLocalePreferences.parseLocaleTag(''), isNull);
  });
}
