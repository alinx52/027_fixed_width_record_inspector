import 'package:flutter/material.dart';

import 'l10n/app_localizations.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.helpTitle),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          children: [
            _buildSection(
              context: context,
              title: localizations.helpProblemSolvedTitle,
              content: localizations.helpProblemSolvedContent,
              icon: Icons.lightbulb_outline,
            ),
            const SizedBox(height: 12),
            _buildSection(
              context: context,
              title: localizations.helpHowToUseTitle,
              content: localizations.helpHowToUseContent,
              icon: Icons.touch_app_outlined,
            ),
            const SizedBox(height: 12),
            _buildSection(
              context: context,
              title: localizations.helpReadingResultsTitle,
              content: localizations.helpReadingResultsContent,
              icon: Icons.analytics_outlined,
            ),
            const SizedBox(height: 12),
            _buildSection(
              context: context,
              title: localizations.helpExampleTitle,
              content: localizations.helpExampleContent,
              icon: Icons.format_list_bulleted_outlined,
            ),
            const SizedBox(height: 12),
            _buildSection(
              context: context,
              title: localizations.helpLimitsTitle,
              content: localizations.helpLimitsContent,
              icon: Icons.verified_user_outlined,
            ),
            const SizedBox(height: 12),
            _buildSection(
              context: context,
              title: localizations.helpDataAndPrivacyTitle,
              content: localizations.helpDataAndPrivacyContent,
              icon: Icons.security_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required BuildContext context,
    required String title,
    required String content,
    required IconData icon,
  }) {
    final theme = Theme.of(context);
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 20, color: theme.colorScheme.primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
