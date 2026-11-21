import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ad_banner.dart';
import 'app_language_menu.dart';
import 'app_config.dart';
import 'design_system.dart';
import 'l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.locale,
    required this.onLocaleChanged,
    required this.designStyle,
    required this.onDesignStyleChanged,
  });

  final Locale locale;
  final ValueChanged<Locale> onLocaleChanged;
  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.appTitle),
        actions: [
          AppLanguageMenu(
            locale: locale,
            onSelected: onLocaleChanged,
            tooltip: localizations.languageEnglish,
          ),
        ],
      ),
      bottomNavigationBar: const AdBanner(),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(localizations.appDescription, textAlign: TextAlign.center),
                const SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppAppearanceMenu(
                      selectedStyle: designStyle,
                      onSelected: onDesignStyleChanged,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        unawaited(
                          launchUrl(
                            Uri.parse(privacyPolicyUrl),
                            mode: LaunchMode.externalApplication,
                          ),
                        );
                      },
                      icon: const Icon(Icons.privacy_tip_outlined),
                      label: Text(localizations.privacyPolicy),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
