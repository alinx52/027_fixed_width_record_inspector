import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'app.dart';

const _adMobTestDeviceIds = String.fromEnvironment('ADMOB_TEST_DEVICE_IDS');

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(_initializeMobileAds());
  runApp(const MyApp());
}

Future<void> _initializeMobileAds() async {
  try {
    final testDeviceIds = _adMobTestDeviceIds
        .split(',')
        .map((value) => value.trim())
        .where((value) => value.isNotEmpty)
        .toList(growable: false);
    if (testDeviceIds.isNotEmpty) {
      await MobileAds.instance.updateRequestConfiguration(
        RequestConfiguration(testDeviceIds: testDeviceIds),
      );
    }
    await MobileAds.instance.initialize();
  } on MissingPluginException {
    return;
  }
}
