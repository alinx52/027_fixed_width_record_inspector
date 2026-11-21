import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdBanner extends StatefulWidget {
  const AdBanner({super.key});

  @override
  State<AdBanner> createState() => _AdBannerState();
}

class _AdBannerState extends State<AdBanner> {
  static const _androidTestBannerId = 'ca-app-pub-3940256099942544/9214589741';
  static const _releaseBannerId = String.fromEnvironment(
    'ADMOB_BANNER_AD_UNIT_ID',
  );
  static const _hideBanner =
      bool.fromEnvironment('STORE_CAPTURE', defaultValue: false) ||
      bool.fromEnvironment('DISABLE_ADS', defaultValue: false);
  static const _enableTestAds = bool.fromEnvironment(
    'ENABLE_TEST_ADS',
    defaultValue: false,
  );
  BannerAd? _ad;

  @override
  void initState() {
    super.initState();
    if (_hideBanner) return;
    final adUnitId = kDebugMode
        ? (_enableTestAds ? _androidTestBannerId : '')
        : _releaseBannerId;
    if (adUnitId.isEmpty) return;
    late final BannerAd ad;
    ad = BannerAd(
      adUnitId: adUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          if (mounted) setState(() => _ad = ad);
        },
        onAdFailedToLoad: (failedAd, _) {
          failedAd.dispose();
        },
      ),
    );
    ad.load();
  }

  @override
  void dispose() {
    _ad?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ad = _ad;
    if (ad == null) return const SizedBox.shrink();
    return SafeArea(
      top: false,
      child: SizedBox(
        width: ad.size.width.toDouble(),
        height: ad.size.height.toDouble(),
        child: AdWidget(ad: ad),
      ),
    );
  }
}
