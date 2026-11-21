import 'package:flutter/material.dart';

class AppLanguageMenu extends StatelessWidget {
  const AppLanguageMenu({
    super.key,
    required this.locale,
    required this.onSelected,
    required this.tooltip,
  });

  final Locale locale;
  final ValueChanged<Locale> onSelected;
  final String tooltip;

  static const _languages = <(Locale, String)>[
    (Locale('en'), 'English (영어)'),
    (Locale('ko'), '한국어 (Korean)'),
    (Locale('ja'), '日本語'),
    (Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'), '简体中文'),
    (Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'), '繁體中文'),
    (Locale('es'), 'Español'),
    (Locale('fr'), 'Français'),
    (Locale('de'), 'Deutsch'),
    (Locale('pt', 'BR'), 'Português (Brasil)'),
    (Locale('it'), 'Italiano'),
    (Locale('nl'), 'Nederlands'),
    (Locale('ru'), 'Русский'),
    (Locale('ar'), 'العربية'),
    (Locale('hi'), 'हिन्दी'),
    (Locale('id'), 'Bahasa Indonesia'),
    (Locale('vi'), 'Tiếng Việt'),
  ];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return PopupMenuButton<Locale>(
      key: const ValueKey('language'),
      tooltip: tooltip,
      onSelected: onSelected,
      itemBuilder: (context) => [
        for (final (language, name) in _languages)
          PopupMenuItem(
            key: ValueKey('locale-${language.toLanguageTag()}'),
            value: language,
            child: Text(name),
          ),
      ],
      child: Container(
        margin: const EdgeInsetsDirectional.only(end: 8),
        padding: const EdgeInsetsDirectional.fromSTEB(8, 6, 6, 6),
        decoration: BoxDecoration(
          border: Border.all(color: colors.outlineVariant),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.language, size: 18),
            const SizedBox(width: 4),
            Text(
              locale.toLanguageTag().toUpperCase(),
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const Icon(Icons.expand_more, size: 18),
          ],
        ),
      ),
    );
  }
}
