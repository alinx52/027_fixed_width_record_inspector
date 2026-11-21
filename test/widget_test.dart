import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fixed_width_record_inspector/app.dart';
import 'package:fixed_width_record_inspector/app_config.dart' as config;

void main() {
  testWidgets('Home page displays the configured app title and description', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    expect(
      find.descendant(
        of: find.byType(AppBar),
        matching: find.text(config.appTitle),
      ),
      findsOneWidget,
    );
    expect(find.text(config.appDescription), findsOneWidget);
  });

  testWidgets('Language selector switches the app locale immediately', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.byKey(const ValueKey('language')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('locale-ko')));
    await tester.pumpAndSettle();

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('ko'),
    );
    expect(find.text('앱 템플릿'), findsOneWidget);
  });
}
