import 'package:flutter/material.dart';

/// Generated from app_spec.json. Select a supported style in design_system
/// instead of changing individual screens for global visual rules.
const String appDesignStyle = "minimal_material";
const String appDesignThemeMode = "system";
const String appDesignDensity = "compact";
const String appDesignCornerStyle = "medium";
const String appDesignMotion = "subtle";
const Color appDesignSeedColor = Color(0xFF455D7A);

ThemeMode get appThemeMode =>
    appDesignThemeMode == 'light' ? ThemeMode.light : ThemeMode.system;

const selectableAppearanceStyles = <String>[
  'minimal_material',
  'flat',
  'soft',
];

ThemeData buildAppTheme(Brightness brightness, {String? styleOverride}) {
  final style = styleOverride ?? appDesignStyle;
  final styleSeed = switch (style) {
    'flat' => const Color(0xFF334155),
    'soft' => const Color(0xFF8A5F7D),
    _ => appDesignSeedColor,
  };
  final colorScheme = ColorScheme.fromSeed(
    seedColor: styleSeed,
    brightness: brightness,
  );
  final radius = switch (appDesignCornerStyle) {
    'compact' => 10.0,
    'rounded' => 20.0,
    _ => 14.0,
  };
  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(radius),
  );
  final isGlass = style == 'glass';
  final isFlat = style == 'flat';
  final isSoft = style == 'soft';
  final isNeumorphic = style == 'neumorphic';
  final isPlayful = style == 'playful';
  final scaffoldColor = isFlat
      ? brightness == Brightness.dark
            ? const Color(0xFF111827)
            : const Color(0xFFF8FAFC)
      : isSoft
      ? brightness == Brightness.dark
            ? const Color(0xFF231B23)
            : const Color(0xFFFCF7FB)
      : colorScheme.surface;
  final cardColor = isGlass
      ? colorScheme.surface.withValues(alpha: brightness == Brightness.dark ? 0.72 : 0.86)
      : isSoft || isNeumorphic
      ? colorScheme.secondaryContainer.withValues(alpha: 0.45)
      : isFlat
      ? brightness == Brightness.dark
            ? const Color(0xFF1E293B)
            : Colors.white
      : colorScheme.surfaceContainer;
  final cardElevation = isFlat ? 0.0 : (isSoft || isNeumorphic ? 1.0 : 0.5);
  final controlRadius = BorderRadius.circular(isPlayful ? 18.0 : radius);

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    visualDensity: appDesignDensity == 'compact'
        ? const VisualDensity(horizontal: -1, vertical: -1)
        : VisualDensity.standard,
    scaffoldBackgroundColor: scaffoldColor,
    appBarTheme: AppBarTheme(
      backgroundColor: scaffoldColor,
      foregroundColor: colorScheme.onSurface,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0.5,
    ),
    cardTheme: CardThemeData(
      color: cardColor,
      elevation: cardElevation,
      margin: EdgeInsets.zero,
      surfaceTintColor: Colors.transparent,
      shape: shape,
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: appDesignDensity == 'compact',
      filled: true,
      fillColor: isSoft ? colorScheme.secondaryContainer.withValues(alpha: 0.35) : cardColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      border: OutlineInputBorder(borderRadius: controlRadius),
      enabledBorder: OutlineInputBorder(
        borderRadius: controlRadius,
        borderSide: BorderSide(color: colorScheme.outlineVariant),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: controlRadius,
        borderSide: BorderSide(color: colorScheme.primary, width: 2),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size(0, 48),
        shape: RoundedRectangleBorder(borderRadius: controlRadius),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(0, 48),
        shape: RoundedRectangleBorder(borderRadius: controlRadius),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: controlRadius),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: colorScheme.inverseSurface,
      contentTextStyle: TextStyle(color: colorScheme.onInverseSurface),
    ),
    dividerTheme: DividerThemeData(color: colorScheme.outlineVariant),
  );
}

class AppAppearanceMenu extends StatelessWidget {
  const AppAppearanceMenu({
    super.key,
    required this.selectedStyle,
    required this.onSelected,
  });

  final String selectedStyle;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      key: const ValueKey('appearance-menu'),
      onSelected: onSelected,
      child: _AppearanceTrigger(),
      itemBuilder: (context) => [
        for (final style in selectableAppearanceStyles)
          PopupMenuItem<String>(
            key: ValueKey('appearance-$style'),
            value: style,
            child: _AppearancePreview(
              style: style,
              selected: style == selectedStyle,
            ),
          ),
      ],
    );
  }
}

class _AppearanceTrigger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Semantics(
      button: true,
      label: 'Theme',
      child: Container(
        height: 40,
        padding: const EdgeInsetsDirectional.only(start: 10, end: 6),
        decoration: ShapeDecoration(
          color: colorScheme.surfaceContainerLow,
          shape: StadiumBorder(side: BorderSide(color: colorScheme.outlineVariant)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.palette_outlined, size: 18, color: colorScheme.primary),
            const SizedBox(width: 2),
            const Icon(Icons.expand_more, size: 18),
          ],
        ),
      ),
    );
  }
}

class _AppearancePreview extends StatelessWidget {
  const _AppearancePreview({required this.style, required this.selected});

  final String style;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final radius = style == 'soft' ? 14.0 : (style == 'flat' ? 4.0 : 9.0);
    final elevation = style == 'flat' ? 0.0 : (style == 'soft' ? 2.0 : 1.0);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: style == 'soft'
              ? colorScheme.secondaryContainer
              : colorScheme.surfaceContainerHigh,
          elevation: elevation,
          borderRadius: BorderRadius.circular(radius),
          child: SizedBox(
            width: 32,
            height: 24,
            child: Icon(
              style == 'flat'
                  ? Icons.crop_square
                  : style == 'soft'
                  ? Icons.circle_outlined
                  : Icons.layers_outlined,
              size: 17,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          switch (style) {
            'flat' => 'Flat',
            'soft' => 'Soft',
            _ => 'Material',
          },
        ),
        const SizedBox(width: 16),
        Icon(
          selected ? Icons.check_circle : Icons.radio_button_unchecked,
          color: selected ? colorScheme.primary : colorScheme.outline,
        ),
      ],
    );
  }
}
