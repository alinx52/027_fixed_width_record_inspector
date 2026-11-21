# Generated app requirements

This app must default to English and support a visible language selector that
switches immediately between `en`, `ko`, `ja`, `zh_Hans`, `zh_Hant`, `es`,
`fr`, `de`, `pt_BR`, `it`, `nl`, `ru`, `ar`, `hi`, `id`, and `vi`.

- Create a complete `lib/l10n/app_<locale>.arb` for every listed locale.
- Translate every user-visible message in each ARB; never use English as a
  placeholder for a non-English translation.
- Keep user-visible strings out of Dart source, except locale identifiers and
  language names used by the selector.
- Keep English as the default locale even when the device locale differs.
- Persist a user-selected locale with `shared_preferences` and restore it on
  subsequent launches. Use English only when no valid saved selection exists.
- Use RTL-aware Flutter layouts and verify Arabic switches to RTL.
- Preserve or implement a visible selector that changes `MaterialApp.locale`
  immediately. Test ARB key completeness and language switching for English,
  Korean, and Arabic.
- Preserve `lib/ad_banner.dart` and the bottom banner slot. Do not add
  interstitial, rewarded, app-open, or native ads unless the specification
  explicitly requests a user-safe placement.
- Preserve `privacyPolicyUrl` in `lib/app_config.dart` and the visible,
  localized in-app privacy-policy link. Open the link externally; do not
  embed the policy in an in-app web view.
- Every new app is global-first: English is the first-run language, all required
  locales remain selectable, and no Korea-only copy, KRW-only behavior, Korean-only
  date format, or Korea-only availability is introduced unless the approved app
  specification explicitly requires it.
- When implementing the existing AdMob banner scaffold, use current
  `google_mobile_ads` APIs and keep `flutter analyze` free of deprecation
  diagnostics.
- Put the language selector in a compact, accessible AppBar menu; do not place
  a full-width language field above the app's primary content. Reuse
  `lib/app_language_menu.dart` unchanged: its `PopupMenuButton` uses the
  Tip Calculator standard (language icon, upper-case locale tag, chevron, 8/6/6/6
  directional padding, 8dp end margin, 10dp outlined radius, and native language
  names). Do not use `DropdownButton`, locale-code-only menu entries, selection
  checkmarks, or an app-specific variant. Keep every required language directly
  selectable from that menu and provide a localized tooltip.
- Preserve the template's standard `AdSize.banner` bottom slot. Do not replace
  it with large or adaptive banners unless an approved specification explicitly
  requires a different size.
- Treat UI quality as a release requirement, not an optional polish pass. Build
  a restrained, app-specific Material interface rather than a generic stack of
  oversized cards and fields. On a typical phone, show the app purpose and the
  first primary input or action without requiring the user to scroll.
- Use a compact visual rhythm: normally 12–16 logical pixels of page padding,
  8–16 pixels between related controls, and 16–24 pixels only between major
  sections. Keep touch targets accessible (at least 48 logical pixels) without
  making every control visually oversized. Avoid gratuitous empty space, large
  hero headings, repeated surface containers, and decorative gradients.
- Establish clear hierarchy with one app bar, a short purpose line only when it
  adds value, one obvious primary action, and quieter secondary actions. Group
  related inputs in at most one restrained surface when that improves scanning;
  show results with stronger contrast and labels that make the next step clear.
- Use the seed color deliberately with accessible contrast, consistent corner
  radii, and icons that communicate actions. Do not use emoji or text glyphs as
  substitute UI icons. Verify the initial mobile layout remains legible with
  the standard bottom banner visible and does not let it cover content.
- Preserve `lib/design_system.dart` and the `buildAppTheme` integration in
  `lib/app.dart`. `app_spec.json` selects one of `minimal_material`, `flat`,
  `soft`, `glass`, `neumorphic`, or `playful`; apply its intent consistently
  without sacrificing color contrast, visible control boundaries, 48dp touch
  targets, or readable text. `minimal_material` is the default. Treat `glass`
  and `neumorphic` as restrained surface treatments, never as an excuse for
  illegible text, invisible controls, excessive blur, or decorative clutter.
- Preserve `AppAppearanceMenu`, its instant session-only switching among
  `minimal_material`, `flat`, and `soft`, and its compact placement immediately
  to the left of the in-app privacy-policy action in a bottom-centered footer
  directly above the standard banner ad. Do not place either action in the
  AppBar. Do not expose glass or neumorphic as runtime user choices.
