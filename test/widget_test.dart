import 'package:fixed_width_record_inspector/app.dart';
import 'package:fixed_width_record_inspector/app_config.dart' as config;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues(<String, Object>{});
  });

  Future<void> pumpApp(WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
  }

  Future<void> inspect(
    WidgetTester tester, {
    required String records,
    required String widths,
  }) async {
    await tester.enterText(find.byKey(const ValueKey('record-input')), records);
    await tester.enterText(find.byKey(const ValueKey('widths-input')), widths);
    await tester.tap(find.byKey(const ValueKey('inspect-button')));
    await tester.pump();
  }

  testWidgets('initial viewport is English-first and exposes primary inputs', (
    tester,
  ) async {
    await pumpApp(tester);

    expect(find.text(config.appTitle), findsOneWidget);
    expect(find.text('Record text'), findsOneWidget);
    expect(find.text('Field widths'), findsOneWidget);
    expect(find.text('Inspect records'), findsOneWidget);
    expect(find.byKey(const ValueKey('language')), findsOneWidget);
    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('en'),
    );
  });

  testWidgets('exact two-row sample reports matching rows and field slices', (
    tester,
  ) async {
    await pumpApp(tester);
    await inspect(
      tester,
      records: 'ABC12345WXYZ\nDEF67890QRST',
      widths: '3,5,4',
    );

    expect(find.text('Inspection result'), findsOneWidget);
    expect(find.text('Rows: 2'), findsOneWidget);
    expect(find.text('Expected length: 12'), findsOneWidget);
    expect(find.text('Matching rows: 2'), findsOneWidget);
    expect(find.text('All rows match'), findsOneWidget);
    expect(find.text('Field 1: ABC'), findsOneWidget);
    expect(find.text('Field 2: 12345'), findsOneWidget);
    expect(find.text('Field 3: WXYZ'), findsOneWidget);
  });

  testWidgets('classifies short, long, and preserved blank rows', (
    tester,
  ) async {
    await pumpApp(tester);
    await inspect(tester, records: 'AB\nABCDE\n\nABCD', widths: '4');

    expect(find.text('Rows: 4'), findsOneWidget);
    expect(find.text('Matching rows: 1'), findsOneWidget);
    expect(find.text('Row 1 · length 2 · Short by 2'), findsOneWidget);
    expect(find.text('Row 2 · length 5 · Long by 1'), findsOneWidget);
    expect(find.text('Row 3 · length 0 · Short by 4'), findsOneWidget);
  });

  testWidgets('handles CRLF and ignores exactly one final line break', (
    tester,
  ) async {
    await pumpApp(tester);
    await inspect(tester, records: 'AB\r\nCD\r\n', widths: '2');

    expect(find.text('Rows: 2'), findsOneWidget);
    expect(find.text('Matching rows: 2'), findsOneWidget);
    expect(find.text('All rows match'), findsOneWidget);
  });

  testWidgets('slices combining characters and emoji as grapheme clusters', (
    tester,
  ) async {
    await pumpApp(tester);
    const combining = 'e\u0301';
    const family = '👨‍👩‍👧‍👦';
    await inspect(tester, records: '$combining$family', widths: '1,1');

    expect(find.text('Matching rows: 1'), findsOneWidget);
    expect(find.text('Field 1: $combining'), findsOneWidget);
    expect(find.text('Field 2: $family'), findsOneWidget);
  });

  testWidgets('shows empty slices and overflow from the first row', (
    tester,
  ) async {
    await pumpApp(tester);
    await inspect(tester, records: 'ABCDE', widths: '2,1,2,1');

    expect(find.text('Field 1: AB'), findsOneWidget);
    expect(find.text('Field 2: C'), findsOneWidget);
    expect(find.text('Field 3: DE'), findsOneWidget);
    expect(find.text('Field 4: (empty)'), findsOneWidget);

    await inspect(tester, records: 'ABCDE', widths: '2,1');
    expect(find.text('Overflow: DE'), findsOneWidget);
  });

  testWidgets('limits mismatch details to twenty rows', (tester) async {
    await pumpApp(tester);
    await inspect(
      tester,
      records: List<String>.filled(22, 'A').join('\n'),
      widths: '2',
    );

    expect(find.byKey(const ValueKey('mismatch-20')), findsOneWidget);
    expect(find.byKey(const ValueKey('mismatch-21')), findsNothing);
    expect(find.text('2 more mismatching rows'), findsOneWidget);
  });

  testWidgets('all invalid inputs are rejected and retain the last result', (
    tester,
  ) async {
    await pumpApp(tester);
    await inspect(tester, records: 'AB', widths: '2');
    expect(find.text('All rows match'), findsOneWidget);

    final cases = <(String, String, String)>[
      ('', '2', 'Enter record text.'),
      ('AB', '', 'Enter field widths.'),
      ('AB', '1,x', 'Use comma-separated positive whole numbers.'),
      (
        'AB',
        List<String>.filled(51, '1').join(','),
        'Enter between 1 and 50 field widths.',
      ),
      ('AB', '0', 'Each field width must be from 1 to 1000.'),
      ('AB', '1001', 'Each field width must be from 1 to 1000.'),
      (
        'AB',
        List<String>.filled(11, '1000').join(','),
        'The total field width cannot exceed 10000.',
      ),
      (
        List<String>.filled(1001, 'A').join('\n'),
        '1',
        'Record text cannot exceed 1000 rows.',
      ),
      (
        List<String>.filled(100001, 'A').join(),
        '1',
        'Record text cannot exceed 100000 characters.',
      ),
    ];

    for (final (records, widths, message) in cases) {
      await inspect(tester, records: records, widths: widths);
      expect(find.text(message), findsOneWidget);
      expect(find.text('All rows match'), findsOneWidget);
      expect(find.text('Field 1: AB'), findsOneWidget);
    }
  });

  testWidgets('Korean and Arabic switching preserves data, result, and RTL', (
    tester,
  ) async {
    await pumpApp(tester);
    await inspect(tester, records: 'AB', widths: '2');

    await tester.tap(find.byKey(const ValueKey('language')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('locale-ko')));
    await tester.pumpAndSettle();
    expect(find.text('고정 폭 레코드 검사기'), findsOneWidget);
    expect(find.text('모든 행이 일치합니다'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('language')));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('locale-ar')));
    await tester.tap(find.byKey(const ValueKey('locale-ar')));
    await tester.pumpAndSettle();

    expect(find.text('فاحص السجلات ثابتة العرض'), findsOneWidget);
    expect(find.text('كل الصفوف متطابقة'), findsOneWidget);
    expect(
      Directionality.of(
        tester.element(find.byKey(const ValueKey('record-input'))),
      ),
      TextDirection.rtl,
    );
    expect(
      tester
          .widget<TextField>(find.byKey(const ValueKey('record-input')))
          .controller!
          .text,
      'AB',
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('restores a valid persisted locale', (tester) async {
    SharedPreferences.setMockInitialValues(<String, Object>{
      'app.locale': 'ko',
    });
    await pumpApp(tester);

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('ko'),
    );
    expect(find.text('고정 폭 레코드 검사기'), findsOneWidget);
  });
}
