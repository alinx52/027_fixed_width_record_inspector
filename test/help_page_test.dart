import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fixed_width_record_inspector/app.dart';
import 'package:fixed_width_record_inspector/help_page.dart';
import 'package:fixed_width_record_inspector/l10n/app_localizations.dart';

void main() {
  testWidgets('Help button navigates to help page and returns', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(800, 1400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await tester.pumpWidget(const MyApp());
    final helpButton = find.byIcon(Icons.help_outline);
    expect(helpButton, findsOneWidget);

    await tester.ensureVisible(helpButton);
    await tester.pumpAndSettle();
    await tester.tap(helpButton);
    await tester.pumpAndSettle();

    expect(find.byType(HelpPage), findsOneWidget);

    final backButton = find.byType(BackButton);
    expect(backButton, findsOneWidget);
    await tester.tap(backButton);
    await tester.pumpAndSettle();

    expect(find.byType(HelpPage), findsNothing);
  });

  testWidgets('Help page displays localized text in en, ko, ar and supports RTL', (
    WidgetTester tester,
  ) async {
    for (final locale in [const Locale('en'), const Locale('ko'), const Locale('ar')]) {
      await tester.pumpWidget(
        MaterialApp(
          locale: locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const HelpPage(),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(HelpPage), findsOneWidget);
      if (locale.languageCode == 'ar') {
        expect(
          Directionality.of(tester.element(find.byType(HelpPage))),
          TextDirection.rtl,
        );
      } else {
        expect(
          Directionality.of(tester.element(find.byType(HelpPage))),
          TextDirection.ltr,
        );
      }
    }
  });
}
