import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ad_banner.dart';
import 'app_config.dart';
import 'app_language_menu.dart';
import 'design_system.dart';
import 'l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
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
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _recordController = TextEditingController();
  final _widthsController = TextEditingController();
  _InspectionResult? _result;
  _ValidationError? _error;

  @override
  void dispose() {
    _recordController.dispose();
    _widthsController.dispose();
    super.dispose();
  }

  void _inspect() {
    final outcome = _inspectInput(
      recordText: _recordController.text,
      widthText: _widthsController.text,
    );
    setState(() {
      _error = outcome.error;
      if (outcome.result != null) {
        _result = outcome.result;
      }
    });
  }

  void _clear() {
    _recordController.clear();
    _widthsController.clear();
    setState(() {
      _error = null;
      _result = null;
    });
  }

  String _errorText(AppLocalizations l10n, _ValidationError error) {
    return switch (error) {
      _ValidationError.recordRequired => l10n.recordRequired,
      _ValidationError.widthsRequired => l10n.widthsRequired,
      _ValidationError.widthsMalformed => l10n.widthsMalformed,
      _ValidationError.widthCountInvalid => l10n.widthCountInvalid,
      _ValidationError.widthOutOfRange => l10n.widthOutOfRange,
      _ValidationError.widthTotalTooLarge => l10n.widthTotalTooLarge,
      _ValidationError.tooManyRows => l10n.tooManyRows,
      _ValidationError.textTooLarge => l10n.textTooLarge,
    };
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.appTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          AppLanguageMenu(
            locale: widget.locale,
            onSelected: widget.onLocaleChanged,
            tooltip: l10n.languageTooltip,
          ),
        ],
      ),
      bottomNavigationBar: _BottomArea(
        designStyle: widget.designStyle,
        onDesignStyleChanged: widget.onDesignStyleChanged,
      ),
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 16),
          children: [
            Text(
              l10n.appDescription,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('record-input'),
              controller: _recordController,
              minLines: 3,
              maxLines: 4,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                labelText: l10n.recordTextLabel,
                hintText: l10n.recordTextHint,
                alignLabelWithHint: true,
                prefixIcon: const Icon(Icons.subject_outlined),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('widths-input'),
              controller: _widthsController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => _inspect(),
              decoration: InputDecoration(
                labelText: l10n.fieldWidthsLabel,
                hintText: l10n.fieldWidthsHint,
                prefixIcon: const Icon(Icons.straighten_outlined),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    key: const ValueKey('inspect-button'),
                    onPressed: _inspect,
                    icon: const Icon(Icons.manage_search_outlined),
                    label: Text(l10n.inspectRecords),
                  ),
                ),
                const SizedBox(width: 8),
                TextButton.icon(
                  key: const ValueKey('clear-button'),
                  onPressed: _clear,
                  icon: const Icon(Icons.clear),
                  label: Text(l10n.clearInput),
                ),
              ],
            ),
            if (_error case final error?) ...[
              const SizedBox(height: 8),
              Semantics(
                liveRegion: true,
                child: Text(
                  _errorText(l10n, error),
                  key: const ValueKey('validation-error'),
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            ],
            if (_result case final result?) ...[
              const SizedBox(height: 16),
              _ResultCard(result: result),
            ],
          ],
        ),
      ),
    );
  }
}

class _BottomArea extends StatelessWidget {
  const _BottomArea({
    required this.designStyle,
    required this.onDesignStyleChanged,
  });

  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppAppearanceMenu(
                    selectedStyle: designStyle,
                    onSelected: onDesignStyleChanged,
                    tooltip: l10n.appearanceTooltip,
                    materialLabel: l10n.appearanceMaterial,
                    flatLabel: l10n.appearanceFlat,
                    softLabel: l10n.appearanceSoft,
                  ),
                  const SizedBox(width: 4),
                  TextButton.icon(
                    key: const ValueKey('privacy-policy'),
                    onPressed: () {
                      unawaited(
                        launchUrl(
                          Uri.parse(privacyPolicyUrl),
                          mode: LaunchMode.externalApplication,
                        ),
                      );
                    },
                    icon: const Icon(Icons.privacy_tip_outlined, size: 18),
                    label: Text(l10n.privacyPolicy),
                  ),
                ],
              ),
            ),
            const AdBanner(),
          ],
        ),
      ),
    );
  }
}

class _ResultCard extends StatelessWidget {
  const _ResultCard({required this.result});

  final _InspectionResult result;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final colors = Theme.of(context).colorScheme;
    final allMatch = result.mismatches.isEmpty;
    return Card(
      key: const ValueKey('inspection-result'),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  allMatch ? Icons.check_circle_outline : Icons.warning_amber,
                  color: allMatch ? colors.primary : colors.error,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    l10n.inspectionResult,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Text(
                  allMatch ? l10n.allRowsMatch : l10n.needsReview,
                  key: const ValueKey('result-status'),
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: allMatch ? colors.primary : colors.error,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 16,
              runSpacing: 6,
              children: [
                Text(l10n.rows(result.rowCount)),
                Text(l10n.expectedLength(result.expectedLength)),
                Text(l10n.matchingRows(result.matchingRows)),
              ],
            ),
            if (result.mismatches.isNotEmpty) ...[
              const SizedBox(height: 12),
              const Divider(height: 1),
              const SizedBox(height: 8),
              for (final mismatch in result.mismatches.take(20))
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Text(
                    l10n.mismatchRow(
                      mismatch.row,
                      mismatch.actualLength,
                      mismatch.actualLength < result.expectedLength
                          ? l10n.shortBy(
                              result.expectedLength - mismatch.actualLength,
                            )
                          : l10n.longBy(
                              mismatch.actualLength - result.expectedLength,
                            ),
                    ),
                    key: ValueKey('mismatch-${mismatch.row}'),
                  ),
                ),
              if (result.mismatches.length > 20)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    l10n.moreMismatches(result.mismatches.length - 20),
                    key: const ValueKey('remaining-mismatches'),
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
            ],
            const SizedBox(height: 12),
            const Divider(height: 1),
            const SizedBox(height: 8),
            Text(
              l10n.fieldPreview,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 4),
            for (var index = 0; index < result.fieldValues.length; index++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: SelectableText(
                  l10n.fieldValue(
                    index + 1,
                    result.fieldValues[index].isEmpty
                        ? l10n.emptyValue
                        : result.fieldValues[index],
                  ),
                  key: ValueKey('field-${index + 1}'),
                ),
              ),
            if (result.overflow.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: SelectableText(
                  l10n.overflowValue(result.overflow),
                  key: const ValueKey('overflow'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

enum _ValidationError {
  recordRequired,
  widthsRequired,
  widthsMalformed,
  widthCountInvalid,
  widthOutOfRange,
  widthTotalTooLarge,
  tooManyRows,
  textTooLarge,
}

class _InspectionOutcome {
  const _InspectionOutcome({this.result, this.error});

  final _InspectionResult? result;
  final _ValidationError? error;
}

class _InspectionResult {
  const _InspectionResult({
    required this.rowCount,
    required this.expectedLength,
    required this.matchingRows,
    required this.mismatches,
    required this.fieldValues,
    required this.overflow,
  });

  final int rowCount;
  final int expectedLength;
  final int matchingRows;
  final List<_Mismatch> mismatches;
  final List<String> fieldValues;
  final String overflow;
}

class _Mismatch {
  const _Mismatch({required this.row, required this.actualLength});

  final int row;
  final int actualLength;
}

_InspectionOutcome _inspectInput({
  required String recordText,
  required String widthText,
}) {
  if (recordText.isEmpty) {
    return const _InspectionOutcome(error: _ValidationError.recordRequired);
  }
  if (widthText.isEmpty) {
    return const _InspectionOutcome(error: _ValidationError.widthsRequired);
  }
  if (recordText.characters.length > 100000) {
    return const _InspectionOutcome(error: _ValidationError.textTooLarge);
  }

  final normalized = recordText.replaceAll('\r\n', '\n');
  final withoutFinalBreak = normalized.endsWith('\n')
      ? normalized.substring(0, normalized.length - 1)
      : normalized;
  final rows = withoutFinalBreak.split('\n');
  if (rows.length > 1000) {
    return const _InspectionOutcome(error: _ValidationError.tooManyRows);
  }

  final tokens = widthText.split(',');
  final widthPattern = RegExp(r'^ *[0-9]+ *$');
  if (tokens.any((token) => !widthPattern.hasMatch(token))) {
    return const _InspectionOutcome(error: _ValidationError.widthsMalformed);
  }
  if (tokens.isEmpty || tokens.length > 50) {
    return const _InspectionOutcome(error: _ValidationError.widthCountInvalid);
  }
  final parsedWidths = tokens
      .map((token) => int.tryParse(token.trim()))
      .toList();
  if (parsedWidths.any((width) => width == null)) {
    return const _InspectionOutcome(error: _ValidationError.widthsMalformed);
  }
  final widths = parsedWidths.cast<int>();
  if (widths.any((width) => width < 1 || width > 1000)) {
    return const _InspectionOutcome(error: _ValidationError.widthOutOfRange);
  }
  final expectedLength = widths.fold<int>(0, (sum, width) => sum + width);
  if (expectedLength > 10000) {
    return const _InspectionOutcome(error: _ValidationError.widthTotalTooLarge);
  }

  final mismatches = <_Mismatch>[];
  var matchingRows = 0;
  for (var index = 0; index < rows.length; index++) {
    final length = rows[index].characters.length;
    if (length == expectedLength) {
      matchingRows++;
    } else {
      mismatches.add(_Mismatch(row: index + 1, actualLength: length));
    }
  }

  final firstRow = rows.first.characters.toList(growable: false);
  final fieldValues = <String>[];
  var start = 0;
  for (final width in widths) {
    final safeStart = start < firstRow.length ? start : firstRow.length;
    final requestedEnd = start + width;
    final safeEnd = requestedEnd < firstRow.length
        ? requestedEnd
        : firstRow.length;
    fieldValues.add(firstRow.sublist(safeStart, safeEnd).join());
    start += width;
  }
  final overflow = start < firstRow.length
      ? firstRow.sublist(start).join()
      : '';

  return _InspectionOutcome(
    result: _InspectionResult(
      rowCount: rows.length,
      expectedLength: expectedLength,
      matchingRows: matchingRows,
      mismatches: mismatches,
      fieldValues: fieldValues,
      overflow: overflow,
    ),
  );
}
